import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.

configurable boolean isEnable = ?;
service / on new http:Listener(9090) {

    resource function get greeting() returns string|error {

        if isEnable {
            return "Hello there"; 
        } else {
            return "Hi there"; 
        }
    }
}