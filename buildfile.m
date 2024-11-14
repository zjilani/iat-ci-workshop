function plan = buildfile

% Add the source folder to the path
addpath("source");

% Create a plan
plan = buildplan(localfunctions);

% Add a task to run tests
plan("test") = matlab.buildtool.tasks.TestTask("tests", TestResults="test-results/results.xml");
plan("test").Description = "Run all unit tests";

end
