#include <string>
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h> 
#include <pthread.h>

/*
Class GraphClient
written by: Alexander Kostadinov
Description:
This is a class that sets up the socket connection 

usage:
int socket = <inster socket number here>;
GraphClient *g = new GraphClient(socket);
cstring str ("this is a message to send")
g->sendMessage(str);
*/


class GraphClient
{
private:
    int sockfd, portno;
    struct sockaddr_in serv_addr;
    struct hostent *server;
    pthread_mutex_t *write_mutex;
    
    bool connected;

public:

    GraphClient()
    {
    }

    GraphClient(int portNumber)
    {
        connected = true;
        portno = portNumber;
        
        write_mutex = new pthread_mutex_t;
        pthread_mutex_init (write_mutex, NULL);
        
        server = gethostbyname("localhost");
        if (server == NULL) 
        {
            fprintf(stderr,"ERROR, no such host\n");
            exit(0);
        }

        
        sockfd = socket(AF_INET, SOCK_STREAM, 0);
        if (sockfd < 0) 
            error("ERROR opening socket");

        bzero((char *) &serv_addr, sizeof(serv_addr));
        serv_addr.sin_family = AF_INET;
        bcopy((char *)server->h_addr, (char *)&serv_addr.sin_addr.s_addr, server->h_length);
        serv_addr.sin_port = htons(portno);
    
        if (connect(sockfd, (const sockaddr*) &serv_addr, sizeof(serv_addr)) < 0)
        {
            printf("ERROR connecting to port #%d... Messages will not be sent to the GraphPanel SWT Application\n", portNumber);
            connected  = false;
        }
    }
    
    void sendMessage(std::string message)
    {
        char buffer[512];
        if (connected == true)
        {
            ssize_t n;
            message += "\n";
            
            // write is not thread-safe, so lock around the act of sending.
            pthread_mutex_lock(write_mutex);
            //n = write (sockfd, (const void*) message.c_str(), strlen(message.c_str()) );
            int total_written = 0, bytes_written = 0;
            while (total_written < strlen(message.c_str()) && bytes_written >= 0)
		total_written += bytes_written = send(  sockfd, 
                                                        message.c_str()  + total_written,
                                                        strlen(message.c_str()) - total_written,
                                                        0 );
            if (n < 0) 
                error ("ERROR writing to socket");
            bzero (buffer, 512);
            pthread_mutex_unlock(write_mutex);
        }
    }

private:
    void error(char *msg)
    {
        perror (msg);
        exit (0);
    }
};


