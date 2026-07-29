import HautevilleHouse.ClassificationAffineVarietiesTheoremCanonicalLaneLean.ReviewerBridge

/-!
# Theorem Statement Layer

This module internalizes the theorem-facing object for
`classification-affine-varieties-canonical-lane`.
-/

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  affineVarietyConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "classification-affine-varieties-canonical-lane",
  theoremName := "Classification of Affine Varieties",
  theoremObject := "affine variety classification",
  classicalBoundary := "Zariski closure and coordinate ring finiteness",
  affineVarietyConstrainedStatement := "admissible-class closed for affine variety classification",
  certificateLane := "affine_variety_constrained",
  carriedRemainder := "unrestricted classical Galois theory carried"
}

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse