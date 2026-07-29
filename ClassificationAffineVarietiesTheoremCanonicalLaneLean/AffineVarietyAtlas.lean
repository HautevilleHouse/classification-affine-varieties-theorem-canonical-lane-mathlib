import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure AffineVarietyAtlas (k : Type) [Field k] where
  covering : List (Type)
  charts : (V : Type) → (V ∈ covering) → Type
  coordinateRings : (V : Type) → (V ∈ covering) → Type
  structureSheaf : Type
  gluingIsomorphisms : Prop
  separatedness : Prop
  noetherian : Prop
  gluingIsomorphismsClosed : gluingIsomorphisms
  separatednessClosed : separatedness
  noetherianClosed : noetherian

structure AffineVarietyAtlasEvidence {k : Type} [Field k] (A : AffineVarietyAtlas k) where
  gluingIsomorphismsClosed : A.gluingIsomorphisms
  separatednessClosed : A.separatedness
  noetherianClosed : A.noetherian

def AffineVarietyAtlasClosed {k : Type} [Field k] (A : AffineVarietyAtlas k) : Prop :=
  A.gluingIsomorphisms ∧ A.separatedness ∧ A.noetherian

theorem affine_variety_atlas_closed_from_evidence {k : Type} [Field k] (A : AffineVarietyAtlas k) (E : AffineVarietyAtlasEvidence A) : AffineVarietyAtlasClosed A := by
  exact And.intro E.gluingIsomorphismsClosed (And.intro E.separatednessClosed E.noetherianClosed)

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse
