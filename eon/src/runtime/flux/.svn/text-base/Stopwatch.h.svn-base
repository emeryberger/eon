#ifndef __STOPWATCH_H__
#define __STOPWATCH_H__

namespace util {
  /**
   * The stopwatch implements platform independent timing
   * \author Brendan Burns
   **/
  class Stopwatch {
  private:
    double _start;
    double _time;
    
  public:
    // Constructor
    Stopwatch();
    
    /** 
     * Get the current time on this stopwatch (in milliseconds)
     * @return The current time stored by this watch
     */
    double getTime();
    
    /** 
     * Start the stop watch
     */
    void start();

    /** 
     * Stop the stop watch
     */
    void stop();

    /** 
     * Reset the value stored in this stopwatch back to zero
     */
    void reset();
  
  protected:
    /**
     * What time is it right now?
     * \return The current time (in milliseconds)
     **/
    double now();
  };
};

#endif
