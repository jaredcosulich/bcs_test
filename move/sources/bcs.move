module ethos::bcs {
    use sui::ecdsa_k1;
    
    public fun is_valid(data: &vector<u8>, signature: &vector<u8>, public_key: &vector<u8>): bool {
        ecdsa_k1::secp256k1_verify(signature, public_key, &ecdsa_k1::keccak256(data))
    }
}