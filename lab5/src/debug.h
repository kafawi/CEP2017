#ifndef CEP_DEBUG_H_
#define CEP_DEBUG_H_

  #define DEBUG_ON 1

  #if defined(DEBUG_ON) && DEBUG_ON > 0
    #define DEBUG_DO(x) x
    #define DEBUG_FPRINT(x) printf x 
  #else
    #define DEBUG_DO(x)
    #define DEBUG_FPRINT(x)
  #endif


#endif