import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Probability.Distribution

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure QuenchedDisorderDistribution where
  couplingDistribution : Type u
  meanCoupling : ℝ
  varianceCoupling : ℝ
  finiteSecondMoment : Prop
  finiteSecondMomentTerm : finiteSecondMoment

structure QuenchedAveragingPackage (Q : QuenchedDisorderDistribution) where
  quenchedFreeEnergy : Prop
  selfAveraging : Prop
  annealedBound : Prop
  disorderAverageExists : Prop

structure QuenchedAveragingEvidence {Q : QuenchedDisorderDistribution} (A : QuenchedAveragingPackage Q) where
  quenchedFreeEnergyClosed : A.quenchedFreeEnergy
  selfAveragingClosed : A.selfAveraging
  annealedBoundClosed : A.annealedBound
  disorderAverageExistsClosed : A.disorderAverageExists

def QuenchedAveragingClosed {Q : QuenchedDisorderDistribution} (A : QuenchedAveragingPackage Q) : Prop :=
  A.quenchedFreeEnergy ∧ A.selfAveraging ∧ A.annealedBound ∧ A.disorderAverageExists

theorem quenched_averaging_closed_from_evidence {Q : QuenchedDisorderDistribution} (A : QuenchedAveragingPackage Q) (E : QuenchedAveragingEvidence A) :
    QuenchedAveragingClosed A := by
  exact And.intro E.quenchedFreeEnergyClosed
    (And.intro E.selfAveragingClosed
      (And.intro E.annealedBoundClosed E.disorderAverageExistsClosed))

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse