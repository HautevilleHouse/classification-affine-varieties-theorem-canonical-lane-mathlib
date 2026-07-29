import HautevilleHouse.ClassificationAffineVarietiesTheoremCanonicalLaneLean.PrimeSpectrumPackage

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure NormalizationTheoremPackage {R : CoordinateRingPackage} {S : PrimeSpectrumPackage R} where
  integralClosure : Type u
  normalizationMap : Type v
  finiteMorphism : Prop
  affineNormalVariety : Prop

structure NormalizationTheoremEvidence {R : CoordinateRingPackage} {S : PrimeSpectrumPackage R} (N : NormalizationTheoremPackage) where
  finiteMorphismClosed : N.finiteMorphism
  affineNormalVarietyClosed : N.affineNormalVariety

def NormalizationTheoremClosed {R : CoordinateRingPackage} {S : PrimeSpectrumPackage R} (N : NormalizationTheoremPackage) : Prop :=
  N.finiteMorphism ∧ N.affineNormalVariety

theorem normalization_theorem_closed_from_evidence {R : CoordinateRingPackage} {S : PrimeSpectrumPackage R} (N : NormalizationTheoremPackage) (E : NormalizationTheoremEvidence N) : NormalizationTheoremClosed N := by
  exact And.intro E.finiteMorphismClosed E.affineNormalVarietyClosed

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse
