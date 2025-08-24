import ballerina/http;
import ballerina/log;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service / on httpDefaultListener {
    resource function get greeting() returns error|json|http:InternalServerError {
        do {
            log:printInfo("Hello Devant!");
            return "Greetings Devant!";
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }
}
