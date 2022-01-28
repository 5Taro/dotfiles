
let b:ale_linters = ['flake8', 'pylint']
let b:ale_fixers = ['autopep8', 'black', 'isort']
nnoremap <silent><Leader>x <Plug>(ale_fix)

inoremap // //
inoremap { {}<LEFT><CR><CR><UP><Tab>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap .. ->
inoremap = <Space>=<Space>
inoremap ++  <Space>+<Space>
inoremap -- <Space>-<Space>
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
inoremap and <Space>and<Space>
inoremap or <Space>or<Space>
inoremap not <Space>not<Space>
inoremap & <Space>&&<Space>
inoremap <Bar> <Space><Bar><Space>
inoremap for for<Space>:<LEFT>
inoremap while while<Space>:<LEFT>
inoremap if if<Space>:<LEFT>
inoremap in<Space> <Space>in<Space>
inoremap def def<Space>:<LEFT>
inoremap #in #include
inoremap #def #define
inoremap #ifn #ifndef
inoremap #en #endif
"nnoremap mm :make<Space>-C<Space>..
nnoremap run :!python %


command! -nargs=? PyResult call PyResultFunc(<f-args>)

function PyResultFunc(...)
	if a:0 == 0
		:read !python % > result
		:split result
		:resize 10
"		:read !python % > result
"		:tabnew result
	elseif a:0  == 1
		if a:1 == 'tab' || a:1 == 't'
			:read !python % > result
			:tabnew result
		elseif a:1 == 'window' || a:1 == 'w'
			:read !python % > result
			:split result
			:resize 10
		else
			echo 'error : arg = w[indow] or t[ab]'
		endif
	endif
endfunction
