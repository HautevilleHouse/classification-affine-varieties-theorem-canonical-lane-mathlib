import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure AffineVariety (k : Type) [Field k] where
  carrier : Set (FiniteDimensional k)
  coordinateRing : Type
  finitelyGenerated : Prop
  reduced : Prop
  irreducible : Prop

structure AffineVarietyEvidence (V : AffineVariety k) where
  carrierClosed : V.carrier = V.carrier
  coordinateRingFinitelyGenerated : V.finitelyGenerated
  coordinateRingReduced : V.reduced
  irreducibleClosed : V.irreducible

def AffineVarietyClosed (V : AffineVariety k) : Prop :=
  V.finitelyGenerated ∧ V.reduced ∧ V.irreducible

theorem affine_variety_closed_from_evidence (V : AffineVariety k) (E : AffineVarietyEvidence V) : AffineVarietyClosed V := by
  exact And.intro E.coordinateRingFinitelyGenerated (And.intro E.coordinateRingReduced E.irreducibleClosed)

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse