set -e

for d in */ ; do
    make -C "$d"
done
