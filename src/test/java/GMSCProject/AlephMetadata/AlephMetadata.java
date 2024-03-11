package GMSCProject.AlephMetadata;

import com.intuit.karate.junit5.Karate;

public class AlephMetadata {
    @Karate.Test
    Karate testLogin() {
        return Karate.run("AlephMetadata").relativeTo(getClass());
    }

}
