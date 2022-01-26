
let b:ale_linters = ['flake8', 'pylint']

inoremap // //
inoremap { {}<LEFT><CR><CR><UP><Tab>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap .. ->
inoremap = <Space>=<Space>
inoremap +  <Space>+<Space>
inoremap - <Space>-<Space>
"inoremap * <Space>*<Space>
"inoremap / <Space>/<Space>
inoremap % <Space>%<Space>
inoremap ** **
inoremap += <Space>+=<Space>
inoremap -= <Space>-=<Space>
inoremap *= <Space>*=<Space>
inoremap /= <Space>/=<Space>
inoremap <= <Space><=<Space>
inoremap >= <Space>>=<Space>
inoremap >>  <Space>><Space>
inoremap << <Space><<Space>
inoremap == <Space>==<Space>
inoremap != <Space>!=<Space>
inoremap && <Space>&&<Space>
inoremap <Bar><Bar> <Space><Bar><Bar><Space>
inoremap if if<Space>()<LEFT>
inoremap while while<Space>()<LEFT>
inoremap #in #include
inoremap #def #define
inoremap #ifn #ifndef
inoremap #en #endif
"nnoremap mm :make<Space>-C<Space>..
nnoremap run :!python %


command! -nargs=? PyResult call PyResultFunc(<f-args>)

function PyResultFunc(...)
	if a:0 == 0
		:!python % > result
		:tabnew result
	elseif a:0  == 1
		if a:1 == 'tab' || a:1 == 't'
			:!python % > result
			:tabnew result
		elseif a:1 == 'window' || a:1 == 'w'
			:!python % > result
			:split result
		else
			echo 'error : arg = w[indow] or t[ab]'
		endif
	endif
endfunction
