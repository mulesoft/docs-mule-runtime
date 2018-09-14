package example;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;


@Path("/example1")
public class RestExampleResource {

    @GET
    @Produces("text/plain")

    public String getExampleMsg(){
        return "REST and be well.";
        //return Response.status(Status.OK).entity("Rest and be well.").build();

    }

}