package org.mule.transformers;
import org.mule.api.MuleMessage;
import org.mule.api.transformer.TransformerException;
import org.mule.transformer.AbstractMessageTransformer;

public class setPropertyAsPayload extends AbstractMessageTransformer{
    /**
     * @param args
     */
    public Object transformMessage(MuleMessage message, String outputEncoding) throws TransformerException {

        String newPayload = message.getOutboundProperty("myProperty");
        return newPayload;
    }
}