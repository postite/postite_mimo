import utest.Runner;
import utest.ui.Report;
class RunAll{

    public static function main(){
        var run = new Runner();
        run.addCase(new SimpleTest());
        Report.create(run);
        run.run();
    }
}