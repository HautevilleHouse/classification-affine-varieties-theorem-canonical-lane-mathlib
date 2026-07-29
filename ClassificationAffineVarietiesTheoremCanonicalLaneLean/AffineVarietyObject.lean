import ClassificationAffineVarietiesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure AffineSpace where
  carrier : Type
  ring : CommRing carrier
  topology : ZariskiTopology carrier

structure AffineVariety where
  space : AffineSpace
  ideal : Ideal (ring space)
  isPrime : Ideal.IsPrime ideal
  coordinateRing : CommRing (ring space ⧸ ideal)

structure AdmittedAffineObject where
  variety : AffineVariety
  isIrreducible : Prop
  isReduced : Prop
  conclusion : isIrreducible ∧ isReduced

def AffineWitnessClosed (O : AdmittedAffineObject) : Prop :=
  O.conclusion

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse