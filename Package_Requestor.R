# ============================= #
# ===== FUNCTION REQUESTOR ===== #
# ============================= #

# --- Script by Paulo Icaro --- #

package_requestor = function(required_packages){
  for(package in required_packages){
    if(!require(package, character.only = TRUE)){
      install.packages(package)
      if(!require(package, character.only = TRUE)){
        stop(paste0('\nen-us: The package ', package, ' could not be loaded. Try again !\n', 'pt-br: O pacote ', package, ' nao pode ser instalado. Tente novamente !'
          ))
      }
    }
  }
}