	
.onLoad <- function(libname, pkgname){
    #packageStartupMessage('Welcome to the wonderful World of LowMACA', domain = NULL, appendLF = TRUE)
    	#Check for clustalomega installation and version	
    .ClustalChecks(ClustalCommand="clustalo")
    	#Check for perl modules dependencies
	.PerlModuleChecks(stop=FALSE , perl="perl")

}
.onAttach <- function(libname, pkgname) {
    msg <- sprintf(
        "Package '%s' is deprecated and will be removed from Bioconductor
         version %s", pkgname, "3.19")
    .Deprecated(msg=paste(strwrap(msg, exdent=2), collapse="\n"))
}

