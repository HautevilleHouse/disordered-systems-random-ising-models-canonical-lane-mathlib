import canonicalLaneMathlib.AdmissibleClass
import DisorderedSystemsRandomIsingModelsCanonicalLaneLean.DisorderedSpinSystems

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure IsingHamiltonianPackage (S : DisorderedSpinSystem) where
  couplingConstants : Type u
  magneticField : Type v
  nearestNeighborSum : Prop
  magneticFieldTerm : Prop
  hamiltonianDefined : Prop
  nearestNeighborSumTerm : nearestNeighborSum
  magneticFieldTermTerm : magneticFieldTerm
  hamiltonianDefinedTerm : hamiltonianDefined

structure IsingHamiltonianEvidence {S : DisorderedSpinSystem} (H : IsingHamiltonianPackage S) where
  nearestNeighborSumClosed : H.nearestNeighborSum
  magneticFieldTermClosed : H.magneticFieldTerm
  hamiltonianDefinedClosed : H.hamiltonianDefined

def IsingHamiltonianClosed {S : DisorderedSpinSystem} (H : IsingHamiltonianPackage S) : Prop :=
  H.nearestNeighborSum ∧ H.magneticFieldTerm ∧ H.hamiltonianDefined

theorem ising_hamiltonian_closed_from_evidence {S : DisorderedSpinSystem} (H : IsingHamiltonianPackage S) (E : IsingHamiltonianEvidence H) : IsingHamiltonianClosed H :=
  And.intro E.nearestNeighborSumClosed (And.intro E.magneticFieldTermClosed E.hamiltonianDefinedClosed)

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse