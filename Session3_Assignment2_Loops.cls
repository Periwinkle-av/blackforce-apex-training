// ============================================================
// SESSION 3 — Assignment 2: Conditional Flow & Loops
// ============================================================

List<Integer> scores = new List<Integer>{95, 72, 45, 88, 60, 33, 79, 81, 55, 67};

Integer excellent = 0;
Integer satisfactory = 0;
Integer needsReview = 0;

for (Integer score : scores) {
    if (score >= 80) {
        excellent++;
        System.debug('Score ' + score + ' → EXCELLENT');
    } else if (score >= 60) {
        satisfactory++;
        System.debug('Score ' + score + ' → SATISFACTORY');
    } else {
        needsReview++;
        System.debug('Score ' + score + ' → NEEDS REVIEW');
    }
}

System.debug('====== FINAL COUNTS ======');
System.debug('EXCELLENT count: ' + excellent);
System.debug('SATISFACTORY count: ' + satisfactory);
System.debug('NEEDS REVIEW count: ' + needsReview);
System.debug('====== Assignment 2 Complete ======');
