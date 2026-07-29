import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationAffineVarietiesTheoremCanonicalLaneLean.AffineVarietyAtlas

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure CoordinateRingConstruction {k : Type} [Field k] (A : AffineVarietyAtlas k) where
  finitelyGenerated : Prop
  reducedRing : Prop
  integralDomain : Prop
  coordinateRingType : Type
  finitelyGeneratedClosed : finitelyGenerated
  reducedRingClosed : reducedRing
  integralDomainClosed : integralDomain

structure CoordinateRingConstructionEvidence {k : Type} [Field k] {A : AffineVarietyAtlas k} (C : CoordinateRingConstruction A) where
  finitelyGeneratedClosed : C.finitelyGenerated
  reducedRingClosed : C.reducedRing
  integralDomainClosed : C.integralDomain

def CoordinateRingConstructionClosed {k : Type} [Field k] {A : AffineVarietyAtlas k} (C : CoordinateRingConstruction A) : Prop :=
  C.finitelyGenerated ∧ C.reducedRing ∧ C.integralDomain

theorem coordinate_ring_construction_closed_from_evidence {k : Type} [Field k] {A : AffineVarietyAtlas k} (C : CoordinateRingConstruction A) (E : CoordinateRingConstructionEvidence C) : CoordinateRingConstructionClosed C := by
  exact And.intro E.finitelyGeneratedClosed (And.intro E.reducedRingClosed E.integralDomainClosed)

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse
