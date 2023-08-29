chk="jansson/test-suite.log"
totalTests=$(grep -w "TOTAL:" $chk | awk '{ print $3}')
failures=$(grep -w "FAIL:" $chk | awk '{ print $3}')

# Echo the following information to guage build health
cat <<TEST
actualFailures:$failures
TotalTests:$totalTests
expectedFailures:0
TEST
