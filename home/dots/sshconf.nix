{config,pkgs,...}:{
	home.file.".ssh/config".text = ''
	    #Default GitHub
	    Host github.com
	    	 HostName github.com
		 User git
		 IdentityFile ~/.ssh/id_ed25519

	   Host github.com-cyber
	   	HostName github.com
		User git
		IdentityFile ~/.ssh/id_ed25519_cyber
	'';

	home.file."work/.gitconfig".text = ''
	  [user]
	    name = blkghst
	    email = blkghstcyber@gmail.com
	'';
}
