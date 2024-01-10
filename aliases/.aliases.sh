ENDCOLOR="\e[0m"
GREEN="\e[32m"

OUTPUT_COMMAND=cat

if command -v bat &> /dev/null
then
  OUTPUT_COMMAND=bat
fi

for file in ~/aliases.d/*.sh
do
#  echo "Sourcing $GREEN$file$ENDCOLOR";
  source $file
done

custom_aliases() {
  for file in aliases.d/*.sh
  do
    if [ $OUTPUT_COMMAND = "cat" ]; then
      echo "File: $GREEN$file:$ENDCOLOR\n";
    fi
    $OUTPUT_COMMAND $file;
    if [ $OUTPUT_COMMAND = "cat" ]; then
      echo "\n---\n"
    fi
  done
}
