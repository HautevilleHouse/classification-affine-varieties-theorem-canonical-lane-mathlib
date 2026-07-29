import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure SheafOfFunctions (X : Type) [TopologicalSpace X] where
  sections : OpenCover X → Type
  restriction : ∀ (U V : OpenCover X), V ⊆ U → sections U → sections V
  sheafCondition : Prop

structure SheafMorphism (X Y : Type) [TopologicalSpace X] [TopologicalSpace Y] where
  underlying : X → Y
  pulledBackSections : ∀ (U : OpenCover Y), SheafOfFunctions.sections U →
    SheafOfFunctions.sections (preimageCover underlying U)

structure AffineMorphism {k : Type} [Field k] (V W : AffineVariety k) where
  underlying : Carrier V → Carrier W
  regularMap : Prop
  inducedMapOnCoordinateRings : Prop
  inducedMapWellDefined : Prop

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse