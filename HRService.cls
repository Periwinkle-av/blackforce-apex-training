public class HRService {

    // CONSTANT
    public static final Integer WARNING_DAYS = 5;

    // METHOD 1: checkLeaveBalance
    public static void checkLeaveBalance(
        List<String> names,
        List<Integer> taken,
        List<Integer> allowed
    ) {
        System.debug('====== LEAVE BALANCE REPORT ======');
        for (Integer i = 0; i < names.size(); i++) {
            Integer remaining = allowed[i] - taken[i];
            if (remaining < 0) {
                System.debug(names[i] + ' → EXCEEDED leave by ' + Math.abs(remaining) + ' days');
            } else if (remaining <= WARNING_DAYS) {
                System.debug(names[i] + ' → WARNING: only ' + remaining + ' days left');
            } else {
                System.debug(names[i] + ' → OK: ' + remaining + ' days remaining');
            }
        }
    }

    // METHOD 2: checkInvoices
    public static Decimal checkInvoices(
        List<String> clients,
        List<Integer> daysLeft,
        List<Decimal> amounts,
        List<String> statuses
    ) {
        System.debug('====== INVOICE REPORT ======');
        Decimal outstanding = 0;
        for (Integer i = 0; i < clients.size(); i++) {
            if (statuses[i] == 'Unpaid' && daysLeft[i] < 0) {
                outstanding += amounts[i];
                System.debug(clients[i] + ' → OVERDUE: ₦' + amounts[i]);
            } else {
                System.debug(clients[i] + ' → Status: ' + statuses[i] + ' | Days left: ' + daysLeft[i]);
            }
        }
        System.debug('Total Outstanding (Overdue): ₦' + outstanding);
        return outstanding;
    }

    // METHOD 3: onboardingReport
    public static void onboardingReport(
        List<String> names,
        List<String> depts,
        List<Integer> pcts
    ) {
        System.debug('====== ONBOARDING REPORT ======');
        Map<String, List<String>> deptMap = new Map<String, List<String>>();
        for (Integer i = 0; i < names.size(); i++) {
            String dept = depts[i];
            String entry = names[i] + ' (' + pcts[i] + '%)';
            if (!deptMap.containsKey(dept)) {
                deptMap.put(dept, new List<String>());
            }
            deptMap.get(dept).add(entry);
        }
        for (String dept : deptMap.keySet()) {
            System.debug('Department: ' + dept);
            for (String entry : deptMap.get(dept)) {
                System.debug('   → ' + entry);
            }
        }
    }

    // METHOD 4: getSummaryString
    public static String getSummaryString(Integer exceeded, Integer warning, Integer ok) {
        return exceeded + ' exceeded, ' + warning + ' warning, ' + ok + ' ok';
    }

}