import HautevilleHouse.ClassificationAffineVarietiesTheoremCanonicalLaneLean.AffineVarietyStructure

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure CoordinateRingPackage where
  ring : Type u
  finitelyGenerated : Prop
  nilpotentFree : Prop
  integrallyClosed : Prop

structure CoordinateRingEvidence (R : CoordinateRingPackage) where
  finitelyGeneratedClosed : R.finitelyGenerated
  nilpotentFreeClosed : R.nilpotentFree
  integrallyClosedClosed : R.integrallyClosed

def CoordinateRingClosed (R : CoordinateRingPackage) : Prop :=
  R.finitelyGenerated ∧ R.nilpotentFree ∧ R.integrallyClosed

theorem coordinate_ring_closed_from_evidence (R : CoordinateRingPackage) (E : CoordinateRingEvidence R) : CoordinateRingClosed R := by
  exact And.intro E.finitelyGeneratedClosed (And.intro E.nilpotentFreeClosed E.integrallyClosedClosed)

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse
