package com.gamehoo.tools.log;

import org.apache.log4j.MDC;

/**
 * Facade for log4j Logger
 *
 * @author ilya.volkov
 */
public class Logger {

    private org.apache.log4j.Logger logger;

    @SuppressWarnings("rawtypes")
    public Logger(Class clazz) {
        logger = org.apache.log4j.Logger.getLogger(clazz);
     }

    public void trace(Object... messages) {
        trace(null, messages);
    }

    public void trace(Throwable cause, Object... messages) {
        log(org.apache.log4j.Level.TRACE, cause, null, messages);
    }

    public void debug(Object... messages) {
        debug(null, messages);
    }

    public void debug(Throwable cause, Object... messages) {
        log(org.apache.log4j.Level.DEBUG, cause, null, messages);
        }

    public void info(Object... messages) {
        info(null, messages);
    }

    public void info(Throwable cause, Object... messages) {
        log(org.apache.log4j.Level.INFO, cause, null, messages);
    }

    public void warn(Object... messages) {
        warn(null, messages);
    }

    public void warn(Throwable cause, Object... messages) {
        log(org.apache.log4j.Level.WARN, cause, null, messages);
        }

    public void error(Object... messages) {
        error(null, messages);
        }

    public void error(Throwable t, Object... messages) {
        log(org.apache.log4j.Level.ERROR, t, null, messages);
        }

    public void fatal(Object... messages) {
        fatal(null, messages);
        }

    public void fatal(Throwable t, Object... messages) {
        log(org.apache.log4j.Level.FATAL, t, null, messages);
        }

    private String getExceptionMessageSafe(Exception e) {
        return e != null ? e.getMessage() : null;
    }

    private void concatenate(StringBuilder builder, Object... messages) {
        for (Object message : messages) {
            if (message != null) {
                if (message instanceof Object[]) {
                    Object[] arr = (Object[]) message;
                    concatenate(builder, arr);
                } else {
                    builder.append(message);
                }
            }
        }
    }

    private void mdcPut(String key, Object object) {
        if (object != null)
            MDC.put(key, object);
    }

    private void mdcRemoveAll(String... keys) {
        if (MDC.getContext() != null) {
//            Enumeration keys = MDC.getContext().keys();
//            while (keys.hasMoreElements())
//                MDC.remove((String) keys.nextElement());
            for (String key : keys)
                MDC.remove(key);
            }
        }


    private static final String LOGGER_FQCN = com.gamehoo.tools.log.Logger.class.getName();

    /**
     * Logs supplied messages/throwable using passed logging level
     *
     * @param level    desired level to log messages/throwable
     * @param cause    parent exception
     * @param wrapper  log class name it's used to find correct error place in stack trace
     * @param messages messages to log
     */
    private void log(org.apache.log4j.Level level, Throwable cause, Class<?> wrapper, Object... messages) {
        if (logger.getLoggerRepository().isDisabled(level.toInt())){
            return;
        }

        if (level.isGreaterOrEqual(logger.getEffectiveLevel())){
            StringBuilder buf = new StringBuilder();
            concatenate(buf, messages);

            logger.log(wrapper == null ? LOGGER_FQCN : wrapper.getName(), level, buf.toString(), cause);
        }
    }

    public boolean isDebugEnabled() {
        return logger.isDebugEnabled();
    }

    public boolean isTraceEnabled() {
        return logger.isTraceEnabled();
    }

    /**
     * Moved from TestLogger. Nice array logging.
     *
     * @param in 2-dimensional array to log
     */
    public void array(Object[][] in) {
        for (Object[] anIn : in)
            array(anIn);
    }

    public void array(Object[] in) {
        String out = "[";
        for (Object object : in)
            out += " " + object;
        out += "]";
        debug(out);
    }
}
