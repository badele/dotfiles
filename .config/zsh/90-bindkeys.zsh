#
# ██████╗ ██╗███╗   ██╗██████╗ ██╗  ██╗███████╗██╗   ██╗███████╗
# ██╔══██╗██║████╗  ██║██╔══██╗██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔════╝
# ██████╔╝██║██╔██╗ ██║██║  ██║█████╔╝ █████╗   ╚████╔╝ ███████╗
# ██╔══██╗██║██║╚██╗██║██║  ██║██╔═██╗ ██╔══╝    ╚██╔╝  ╚════██║
# ██████╔╝██║██║ ╚████║██████╔╝██║  ██╗███████╗   ██║   ███████║
# ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝

# For testing key, use `cat` command and type a key
# Main commands in `man zshzle` & `zle -al`

# Shell
bindkey "^[[1;5D" 	backward-word		            # [CTRL-LEFT]		Move backward one word
bindkey "^[[1;5C" 	forward-word		            # [CTRL-RIGHT]		Move forward one word
bindkey "^L" 		clear-screen		            # [CTRL-L]		    Reset screen
bindkey "^A" 		beginning-of-line	            # [CTRL-A]		    Beginning of line
bindkey "^E" 		end-of-line		                # [CTRL-E]		    End of line
bindkey "^[[F" 		end-of-line           	        # [End]			    Go to end of line
bindkey "^[[H" 		beginning-of-line      	        # [Home]		    Go to beginning of line
bindkey "^[[A"      history-substring-search-up     # [Up]              Search up substring history
bindkey "^[[B"      history-substring-search-down   # [Down]            Search down substring history

# FZF & Z
bindkey "^R" 		fzf-history-widget	            # [CTRL-R]		Show FZF histories
bindkey "^T" 		fzf-file-widget		            # [CTRL-T]		Show FZF files
bindkey "^F" 		fzf-cd-widget		            # [CTRL-F]		Goto FZF selected folder

# navi
bindkey '^N' 		_call_navi		                # [CTRL-N]		Show navi menu
