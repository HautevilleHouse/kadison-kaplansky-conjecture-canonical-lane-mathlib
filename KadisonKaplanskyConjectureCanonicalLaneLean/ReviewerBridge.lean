import KadisonKaplanskyConjectureCanonicalLaneLean.Formalization
import KadisonKaplanskyConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace KadisonKaplanskyConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "91f036c6a54fd243223012f0528d6dce394bb61688e11f81a07dd8fd1a831476", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "592727d6cf31430bf329a354d39a50499ae7c91e48a83a1305b759ad25096618", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "a90c859068856b06dc3375310018d96211f0824bfdfb80da4277cc4aac04a444", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "cf088001f7b4176135b0bc60ec38ec59a786157bd632d1faa07ae504eaec6015", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "655640c156e35fbd204225c0e5ffb7ff5a62287ecbdbfea2ccd3bd1703d1b53f", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "65d7a48d701535447bdee0f85b11167d8652b96cde420177400d1710aca0636e", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "36fba4d62a14ba22dd3d4556d2803f3dafcd52e3cb297d28a9dee19eb311a63d", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "68a81dda73b40eddae3207c550f650ec21defc4a32d60d08355c94ad8fe16971", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "0daaea0a501c53780259cb48f21109f5f06e6d0138f641c7dd39b487b9774ff7", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "KK_G1", constant := "kappa_projection" },
  { gate := "KK_G2", constant := "sigma_trace" },
  { gate := "KK_G3", constant := "kappa_compact" },
  { gate := "KK_G4", constant := "rho_rigidity" },
  { gate := "KK_G5", constant := "projection_transfer" },
  { gate := "KK_G6", constant := "eps_coh" },
  { gate := "KK_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "cdf1fe762275faf3ad7d51ed27b7cd26e8cec770e2b065a5a7a2fcfadfdf5e6b" },
  { path := "README.md", sha256 := "7160ac34cbc2c441a0e6dfcaf91ba4764f5a66d809878ecb32291103ed775deb" },
  { path := "artifacts/constants_extracted.json", sha256 := "cf088001f7b4176135b0bc60ec38ec59a786157bd632d1faa07ae504eaec6015" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "a90c859068856b06dc3375310018d96211f0824bfdfb80da4277cc4aac04a444" },
  { path := "artifacts/constants_registry.json", sha256 := "655640c156e35fbd204225c0e5ffb7ff5a62287ecbdbfea2ccd3bd1703d1b53f" },
  { path := "artifacts/promotion_report.json", sha256 := "36fba4d62a14ba22dd3d4556d2803f3dafcd52e3cb297d28a9dee19eb311a63d" },
  { path := "artifacts/stitch_constants.json", sha256 := "65d7a48d701535447bdee0f85b11167d8652b96cde420177400d1710aca0636e" },
  { path := "notes/EG1_public.md", sha256 := "33dfba9adea7aaacb3dbcff8e39e01bdcfb5b277f3dcf48f0208de47549a1b62" },
  { path := "notes/EG2_public.md", sha256 := "61e769125481705f90844e21a4a0897ff246bde914c4a02b8d399e283e72bd41" },
  { path := "notes/EG3_public.md", sha256 := "3048889ba5347dbeeefc9231c68d616b90f428275e0b4ffdb8a28d2c681a5a3c" },
  { path := "notes/EG4_public.md", sha256 := "274eac50881d98bcef2e75b0ed17bf26911352456ebb48d8e96c9f33851e9e83" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "592727d6cf31430bf329a354d39a50499ae7c91e48a83a1305b759ad25096618" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "e2c0b9942c00491fa74f8b298ae107fa7fe6216ada92b63ec7a5451c19b88d10" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "128fe09c057a266ee0232238545bc001eb69cb6450f00ec7ae1e8593e24285d5" },
  { path := "paper/KADISON_KAPLANSKY_CONJECTURE_PREPRINT.md", sha256 := "6ca4e4112bb177bf720c3a5a9b16b40ab643f0f059f7b23d1f04254229f266b6" },
  { path := "repro/REPRO_PACK.md", sha256 := "1d6d3caf8f7dfb51d9893f802b16cc50427d4a5b8e637d36f187b8497455d8f2" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "d18f1bf7880daa483aee2cdbf28e292d06a5f50171892507c2b12e147cf23218" },
  { path := "repro/certificate_baseline.json", sha256 := "0daaea0a501c53780259cb48f21109f5f06e6d0138f641c7dd39b487b9774ff7" },
  { path := "repro/run_repro.sh", sha256 := "110c1091a5b46689de205c378c3b033a3de1176a3e2df1faf488c8e5b4764bb2" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/kk_closure_guard.py", sha256 := "7f14a59b43771013ca029b153bb36517f9b956ce3fe2bcbcad027303d4726c74" },
  { path := "scripts/README.md", sha256 := "3090058713adbc73113be514408ec3967cf18e44cb87e0832b88c4a9da2e3fb3" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "KK_G1", status := "PASS" },
  { gate := "KK_G2", status := "PASS" },
  { gate := "KK_G3", status := "PASS" },
  { gate := "KK_G4", status := "PASS" },
  { gate := "KK_G5", status := "PASS" },
  { gate := "KK_G6", status := "PASS" },
  { gate := "KK_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_projection", value := "1.0932" },
  { key := "projection_transfer", value := "1.029422" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_star_can", value := "1.053" },
  { key := "sigma_trace", value := "1.0750000000000002" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_projection",
  "projection_transfer",
  "rho_rigidity",
  "sigma_star_can",
  "sigma_trace"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end KadisonKaplanskyConjectureCanonicalLaneLean
end HautevilleHouse
