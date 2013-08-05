echo 'Building...'
echo 'Compiling stopwatch.'
gcc stopwatch.c
echo 'Compile stopwatch complete.'
echo 'Copying stopwatch...'
cp -v a.out q1/
cp -v a.out q2/
echo 'Compiling Lua...'
cd q1
luac -o best_script.out best_script.lua
cd ..
echo 'done...'
