slugify () {
    echo "$1" | iconv -c -t ascii//TRANSLIT | sed -E 's/[~^]+//g' | sed -E 's/[^a-zA-Z0-9]+/-/g' | sed -E 's/^-+|-+$//g' | tr A-Z a-z
}

cd exampleSite/content/blog
cat post-1.txt | chatgpt "." > tmp.md
TITLE=$(sed '2q;d' tmp.md)
TITLE=$(echo "${TITLE/title: \"/}")
TITLE=$(echo "${TITLE/\"/}")
echo $TITLE
SLUG=$(slugify "$TITLE")
echo $SLUG
mv tmp.md $SLUG.md