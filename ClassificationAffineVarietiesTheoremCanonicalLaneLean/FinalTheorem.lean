import HautevilleHouse.ClassificationAffineVarietiesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

def ConstrainedAffineVarietiesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_affine_varieties_endgame (A : AdmissibleClass) :
    ConstrainedAffineVarietiesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse
