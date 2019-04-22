set --global --export ASDF_CONFIG_FILE $XDG_CONFIG_HOME/asdfrc
set --global --export ASDF_DATA_DIR    $XDG_CACHE_HOME/asdf

if [ ! -e "$XDG_CACHE_HOME/asdf/asdf.fish" ]
	git clone https://github.com/asdf-vm/asdf $ASDF_DATA_DIR
	pushd $ASDF_DATA_DIR
	git checkout ( git describe --abbrev=0 --tags )
	popd
end

source $XDG_CACHE_HOME/asdf/asdf.fish
