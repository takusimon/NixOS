{config,pkgs,...}:{
  programs.git = {
    enable = true;
     settings = {
      user = {
       name = "Taku Nyabadza";
       email = "67196996+takusimon@users.noreply.github.com";
      };
       init.defaultBranch = "main";
     };

     includes = [
      {
     	condition = "gitdir:~/work/";
	contents = {
	 user = {
	      name = "blkghst";
	      email = "blkghstcyber@gmail.com";
	 };
	};
      }
     ];
  };
}