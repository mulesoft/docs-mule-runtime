package com.mulesoft.mule.cache;

import org.mule.api.MuleEvent;
import org.mule.api.transport.PropertyScope;

import com.mulesoft.mule.cache.responsegenerator.DefaultResponseGenerator;

/**
 * Creates a cached response for the fibonacci calculation
 */
public class FibonacciResponseGenerator extends DefaultResponseGenerator
{

    @Override
    public MuleEvent create(MuleEvent request, MuleEvent cachedResponse)
    {
        MuleEvent result = super.create(request, cachedResponse);
        result.getMessage().setProperty("cost", 0, PropertyScope.OUTBOUND);

        return result;
    }
}