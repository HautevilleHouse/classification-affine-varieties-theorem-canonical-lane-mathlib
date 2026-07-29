import HautevilleHouse.ClassificationAffineVarietiesTheoremCanonicalLaneLean.DimensionTheory

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure ClassificationEndgamePackage {R : CoordinateRingPackage} {S : PrimeSpectrumPackage R} {N : NormalizationTheoremPackage} {D : DimensionTheoryPackage} where
  smoothLocusDense : Prop
  resolutionOfSingularities : Prop
  birationalClassification : Prop

structure ClassificationEndgameEvidence {R : CoordinateRingPackage} {S : PrimeSpectrumPackage R} {N : NormalizationTheoremPackage} {D : DimensionTheoryPackage} (C : ClassificationEndgamePackage) where
  smoothLocusDenseClosed : C.smoothLocusDense
  resolutionOfSingularitiesClosed : C.resolutionOfSingularities
  birationalClassificationClosed : C.birationalClassification

def ClassificationEndgameClosed {R : CoordinateRingPackage} {S : PrimeSpectrumPackage R} {N : NormalizationTheoremPackage} {D : DimensionTheoryPackage} (C : ClassificationEndgamePackage) : Prop :=
  C.smoothLocusDense ∧ C.resolutionOfSingularities ∧ C.birationalClassification

theorem classification_endgame_closed_from_evidence {R : CoordinateRingPackage} {S : PrimeSpectrumPackage R} {N : NormalizationTheoremPackage} {D : DimensionTheoryPackage} (C : ClassificationEndgamePackage) (E : ClassificationEndgameEvidence C) : ClassificationEndgameClosed C := by
  exact And.intro E.smoothLocusDenseClosed (And.intro E.resolutionOfSingularitiesClosed E.birationalClassificationClosed)

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse
