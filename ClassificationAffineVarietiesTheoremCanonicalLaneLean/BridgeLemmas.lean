import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationAffineVarietiesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AffineVarietyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse
