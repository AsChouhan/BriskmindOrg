public class aghst {
    public static void adsf(){
        List<Account> con = [select Name from Account limit 10];
        system.debug(con);
    }
}