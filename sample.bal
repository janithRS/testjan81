import ballerina/http;

type Greeting record {
    string 'from;
    string to;
    string message;
};

service /test2 on new http:Listener(8090) {
    resource function get .(string name) returns Greeting {
        Greeting greetingMessage = {"from" : "Choreo", "to" : name, "message" : "Welcome to Choreo 2!"};
        return greetingMessage;
    }
}

service /test3 on new http:Listener(8091) {
    resource function get .(string name) returns Greeting {
        Greeting greetingMessage = {"from" : "Choreo", "to" : name, "message" : "Welcome to Choreo 3!"};
        return greetingMessage;
    }
}

service /welcome on new http:Listener(6070) {
    resource function get .(string name) returns Greeting {
        Greeting greetingMessage = {"from" : "Choreo", "to" : name, "message" : "Welcome to Choreo 4!"};
        return greetingMessage;
    }
}
