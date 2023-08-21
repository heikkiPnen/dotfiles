# Defined in - @ line 1
function btrfs_show --wraps='sudo btrfs filesystem show' --description 'alias btrfs_show=sudo btrfs filesystem show'
  printf "btrfs filesystem show\\n\\n"
  sudo btrfs filesystem show $argv;
end
