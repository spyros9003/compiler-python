# compiler-python 
Γενικές παρατηρήσεις
Σκοπός της εργαστηριακής άσκησης ήταν να φτιάξουμε έναν λεκτικό και συντακτικό αναλητή της γραμματικής της γλώσσας python. Στο συγκεκριμένο project έχουν υλοποιηθεί όλες οι εντολές και όλα τα υποερωτήματα τα οποία ζητούνται από την εκφώνηση.  Αναλυτικότερα, η python είναι μια γλώσσα προγραμματισμού στην οποία ο διαχωρισμός των blocks γίνεται συγκρίνοντας των αριθμό των tabs ή whitspaces στην αρχή της κάθε γραμμής. Όπως αναφέρεται στο documentation της γλώσσας ο τρόπος με τον οποίο παράγει τα INDENT και DEDENT token είναι ο εξής:
Στον λεξικό αναλυτή υλοποιείται μια στοίβα όπου στην βάση της βρίσκεται πάντα το 0. Σε κάθε καινούρια γραμμή ενεργοποιείται ένας κανόνας ο οποίος ελέγχει κάθε φορά το μέγεθος του identation και ανάλογα με την τιμή που βρίσκεται στην κορυφή της στοίβας παράγει και τα ανάλογα INDENT και DEDENT token. Συνεπώς κάποια λάθη ανιχνεύονται από τον λεκτικό αναλυτή στον οποίο υλοποιείται η στοίβα και άλλα από τον συντακτικό αναλυτή. 
 
 ![image](https://user-images.githubusercontent.com/100094026/158454418-b8761095-47d2-4baf-8b3d-b1b9b23a145b.png)
Από την παραπάνω φωτογραφία συμπεραίνουμε ότι ο μεταγλωτιστής μας είναι απολύτως αξιόπιστος αφού επαληθεύει ακριβώς αυτά που βλέπουμε από πάνω.
