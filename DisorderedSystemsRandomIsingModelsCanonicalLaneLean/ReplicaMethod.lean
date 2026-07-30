import canonicalLaneMathlib.AdmissibleClass
import DisorderedSystemsRandomIsingModelsCanonicalLaneLean.SherringtonKirkpatrick

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure ReplicaMethodPackage {S : DisorderedSpinSystem} {H : IsingHamiltonianPackage S} {P : PhaseTransitionPackage H} {SK : SherringtonKirkpatrickPackage P} where
  replicaTrick : Prop
  annealedAverage : Prop
  quenchedAverage : Prop
  replicaIdentity : Prop
  replicaTrickTerm : replicaTrick
  annealedAverageTerm : annealedAverage
  quenchedAverageTerm : quenchedAverage
  replicaIdentityTerm : replicaIdentity

structure ReplicaMethodEvidence {S : DisorderedSpinSystem} {H : IsingHamiltonianPackage S} {P : PhaseTransitionPackage H} {SK : SherringtonKirkpatrickPackage P} (R : ReplicaMethodPackage SK) where
  replicaTrickClosed : R.replicaTrick
  annealedAverageClosed : R.annealedAverage
  quenchedAverageClosed : R.quenchedAverage
  replicaIdentityClosed : R.replicaIdentity

def ReplicaMethodClosed {S : DisorderedSpinSystem} {H : IsingHamiltonianPackage S} {P : PhaseTransitionPackage H} {SK : SherringtonKirkpatrickPackage P} (R : ReplicaMethodPackage SK) : Prop :=
  R.replicaTrick ∧ R.annealedAverage ∧ R.quenchedAverage ∧ R.replicaIdentity

theorem replica_method_closed_from_evidence {S : DisorderedSpinSystem} {H : IsingHamiltonianPackage S} {P : PhaseTransitionPackage H} {SK : SherringtonKirkpatrickPackage P} (R : ReplicaMethodPackage SK) (E : ReplicaMethodEvidence R) : ReplicaMethodClosed R :=
  And.intro E.replicaTrickClosed (And.intro E.annealedAverageClosed (And.intro E.quenchedAverageClosed E.replicaIdentityClosed))

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse