#include <assert.h>
#include <stdio.h>
#include <math.h>
#include <stack>
#include <map>
#include <pthread.h>
#include <string>
#include <vector>
#include "timer.h"
#include "Stopwatch.h"

#define DISTR_SIZE 32
    
class Logger 
{

	protected:
		unsigned int ia_time_distr[DISTR_SIZE];
		unsigned int completion_time_distr[DISTR_SIZE];  
        
	private:
		unsigned int num_arrivals;
		int num_timers;
		bool first_time;
        
		markov::Timer ia_timer;
        
		std::map <int, util::Stopwatch *> completion_stopwatch_map;
		std::map <int, bool> timer_availability_map;

		std::vector <double> *completions_vector;
		std::vector <double> *ia_vector;

		pthread_mutex_t *timer_mutex;
		pthread_rwlock_t *arrivals_rw_lock;
		pthread_rwlock_t *completion_rw_lock;
		pthread_rwlock_t *ia_rw_lock;
                
	private:
		int get_free_timer()
		{
			for (int i = 0; i < num_timers; i++)
			{
				if (timer_availability_map[i] = true)
				{
					timer_availability_map[i] = false;
					return i;
				}
			}
        
			num_timers++;
			completion_stopwatch_map[num_timers] = new util::Stopwatch();
			timer_availability_map[num_timers] = false;
        
			return num_timers;
		}
            
	public:
		Logger ()
		{
			//get_free_timer();    
        
			completions_vector = new std::vector <double>;
			ia_vector = new std::vector <double>;

			timer_mutex = new pthread_mutex_t;
			pthread_mutex_init (timer_mutex, NULL);
        
			completion_rw_lock = new pthread_rwlock_t;
			pthread_rwlock_init(completion_rw_lock, NULL);
        
			ia_rw_lock = new pthread_rwlock_t;
			pthread_rwlock_init(ia_rw_lock, NULL);
                
			arrivals_rw_lock = new pthread_rwlock_t;
			pthread_rwlock_init(arrivals_rw_lock, NULL);
            
			first_time = true;
			num_arrivals = 0;
			num_timers = 10;
        
			util::Stopwatch *timer_tmp;
			for (int i=0; i< num_timers; i++)
			{
				timer_tmp = new util::Stopwatch();
				completion_stopwatch_map[i] = timer_tmp;
				timer_availability_map[i] = true;
			}
        
		}
        
		int start (void) 
		{
			pthread_rwlock_wrlock(arrivals_rw_lock);
			num_arrivals++;
			pthread_rwlock_unlock(arrivals_rw_lock);
        
			if (first_time)
			{
				ia_timer.start();        
            
				bzero (ia_time_distr, DISTR_SIZE * sizeof (unsigned int));
				bzero (completion_time_distr, DISTR_SIZE * sizeof (unsigned int));
            
				first_time = false;
			}
			else
			{
				ia_timer.stop();
            
				log_ia((double) ia_timer);
				ia_timer.start();
			}
			pthread_mutex_lock(timer_mutex);
			int ret = get_free_timer();
			completion_stopwatch_map[ret]->start();
			pthread_mutex_unlock(timer_mutex);
			return ret;
		}
    
		int start (int arrivals) 
		{
			pthread_rwlock_wrlock(arrivals_rw_lock);
			num_arrivals += arrivals;
			pthread_rwlock_unlock(arrivals_rw_lock);
        
			if (first_time)
			{
				ia_timer.start();        
            
				bzero (ia_time_distr, DISTR_SIZE * sizeof (unsigned int));
				bzero (completion_time_distr, DISTR_SIZE * sizeof (unsigned int));
            
				first_time = false;
			}
			else
			{
				ia_timer.stop();
            
				log_ia((double) ia_timer);
				ia_timer.start();
			}
			pthread_mutex_lock(timer_mutex);
			int ret = get_free_timer();
			completion_stopwatch_map[ret]->start();
			pthread_mutex_unlock(timer_mutex);
			return ret;
		}
	

		void stop (int timer_num) 
		{
			double comp_time = completion_stopwatch_map[timer_num]->getTime();
			//printf("completion time: %d \n", (int)comp_time);
			completion_stopwatch_map[timer_num]->stop();
        
			pthread_mutex_lock(timer_mutex);
			timer_availability_map[timer_num] = true;
			pthread_mutex_unlock(timer_mutex);
        
			log_completions(comp_time);
		}

		std::string print_ia_histogram()
		{
			std::string s = "";
			char buf[256];
		
			pthread_rwlock_wrlock(ia_rw_lock);
			sprintf(buf, "%d ", ia_vector->size());
			s += buf;
        
			while (ia_vector->size() > 0)
			{
				double d = ia_vector->at(ia_vector->size()-1);
				sprintf(buf, "%d ", (int)d);
				ia_vector->pop_back();
				s += buf;
			}
			pthread_rwlock_unlock(ia_rw_lock);
        
			return s;
		}
    
		std::string print_completions_histogram()
		{
			std::string s = "";
			char buf[256];
			pthread_rwlock_wrlock(completion_rw_lock);
        
			sprintf(buf, "%d ", completions_vector->size());
			s += buf;
			while (completions_vector->size() > 0)
			{
				double d = completions_vector->at(completions_vector->size()-1);
				sprintf(buf, "%d ", (int)d);
				completions_vector->pop_back();
				s += buf;
			}
			pthread_rwlock_unlock(completion_rw_lock);
        
			return s;
		}
    
		int print_num_arrivals()
		{
			int ret;
			pthread_rwlock_wrlock(arrivals_rw_lock);
			ret = num_arrivals;
			pthread_rwlock_unlock(arrivals_rw_lock);
			return ret;
		}
    
		std::string getValues()
		{
			std::string s = "";
			char buf[256];
        
			sprintf(buf, "%d ", print_num_arrivals());
			s += buf;
			s += " " + print_ia_histogram() + " " + print_completions_histogram();
        
			return s;
        
		}
    
		void log_completions(double timeval)
		{
			pthread_rwlock_wrlock(completion_rw_lock);
			if (timeval < 0)
			{
				printf ("error.. negative time interval");
				pthread_rwlock_unlock(completion_rw_lock);
				return;
			}
        
			//completions_vector->push_back(timeval*1000000);
			completions_vector->push_back(timeval*1000);

			pthread_rwlock_unlock(completion_rw_lock);
		}
    
		void log_ia(double timeval)
		{
			pthread_rwlock_rdlock(ia_rw_lock);
			if (timeval < 0)
			{
				printf ("error.. negative time interval");
				pthread_rwlock_unlock(ia_rw_lock);
				return;
			}
        
			ia_vector->push_back(timeval*1000000);

			pthread_rwlock_unlock(ia_rw_lock);
		}

};
