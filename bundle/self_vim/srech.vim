"function! Go(cmd,...)
	""%这个是获取当前名字
"	exec "!time echo $GOROOT"
"	echo  a:cmd
"call Srech()
"endfunction
function! Srech()
	!command cd ~/.vim/bundle/self_vim/ && ./srech.sh
endfunction

"function! Start_go(start,...)
"   !command  /bin/bash -c
 "echo 1;echo 2;echo $GOPATH"
""第一个参数
"    echo a:start
""第二个参数
"  echo a:{1}
"endfunction

