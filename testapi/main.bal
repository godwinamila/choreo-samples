import ballerina/http;
import ballerina/log;


//ADD proper logs
service /testapi on new http:Listener(9090) {

    function init() returns error? {
        log:printInfo("Init Test API......!");        
    }

    resource function get test() returns json|error {
        log:printInfo("Executing test API resource...");

        return {"message": "success 1"};
    }
}