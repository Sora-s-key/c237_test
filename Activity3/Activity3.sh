mx=50
mn=5
arr=""
c=$(echo "$arr" | wc -w)
while [ $c -lt $mn ]
do
   (( t = mn - c ))
   echo "Enter numbers from 1 to 50 ($t to go):"
   read numbers
   numbers=$(echo "$numbers" | sed 's/[;,:\//]/ /g;' | awk '
      {
         c=split(arr, a);
         for (i=1; i<=c; i++) b[a[i]]=i;
         for (i=1; i<=NF; i++) {
            n=$i;
            n+=0;
            n=int(n);
            if (n > 0 && n<=mx && ! b[n] && split(arr, _) < mn) {arr=arr " " n; b[n]=n;}
         }
         if (arr) print arr;
      } ' mn=$mn mx=$mx arr="$arr";
   )
   arr=$(echo "$numbers" | sed 's/^ *//; s/ *$//; s/  */ /g;')
   c=$(echo "$arr" | wc -w)
   echo ""
   echo "Numbers entered: $arr"
   echo ""
done
