#[test_only]
module ethos::bcs_tests {
    use ethos::bcs::is_valid;

    const PUBKEY: vector<u8> = x"0468f2aecfd38a14c96b60fcee60b497e4021661680536887b21a04a4f25f3986bd2bd172455ad14085e0c57689e6d2da7dff4914fb90a9d6cc5c8ea780d669d41";

    #[test]
    fun test_is_valid_allustration() {
        let data = x"13612077696c6420666c6f776572206669656c640c416c6c757374726174696f6e";
        let signature = x"d05b2e30a06d0e063bd37fd5e9bebf2b1614c854ab96bee395a67762c9c1a678269ddf40b7fab46f7ed6db454cee6d9f274a08aed77a36401979c0764b5f8b7301";

        assert!(is_valid(&data, &signature, &PUBKEY), 0);
    }

    #[test]
    fun test_is_valid_bllustration() {
        let data = x"13612077696c6420666c6f776572206669656c640c426c6c757374726174696f6e";
        let signature = x"93101f470c0cb8e2707a0306d147381ceaec0c2f549db72299ee9541775a289871752c3b277e7833347b682c4df68b640474acd6c74a1b943979dedf55f9525a01";

        assert!(is_valid(&data, &signature, &PUBKEY), 0);
    }

    #[test]
    fun test_is_valid_cllustration() {
        let data = x"13612077696c6420666c6f776572206669656c640c436c6c757374726174696f6e";
        let signature = x"cd47047f9d122fbc422d70be36b05b4558d0db722963a7788b92df04bd71b348578710ffafecd111d749101df251d9f46680d37b9402d93be79c586076eba72a00";

        assert!(is_valid(&data, &signature, &PUBKEY), 0);
    }

    #[test]
    fun test_is_valid_dllustration() {
        let data = x"13612077696c6420666c6f776572206669656c640c446c6c757374726174696f6e";
        let signature = x"d29cce9244751c4e6e853e359a257196960a5e6f3701c064007f216e33ed706e6411cd8d7021c05ce7cedf53ce9ebcc567633b99026e6b40d0516e10413f2a1b01";

        assert!(is_valid(&data, &signature, &PUBKEY), 0);
    }

    #[test]
    fun test_is_valid_ellustration() {
        let data = x"13612077696c6420666c6f776572206669656c640c456c6c757374726174696f6e";
        let signature = x"0df16a10c5781ba0ba9fb9750acf52fd01d3adec5ed82b8ce29194121db725116616fef688da088e1b1210a9859565c879be7d10d5a316436f74d4671d1c8e4e00";

        assert!(is_valid(&data, &signature, &PUBKEY), 0);
    }

    #[test]
    fun test_is_valid_fllustration() {
        let data = x"13612077696c6420666c6f776572206669656c640c466c6c757374726174696f6e";
        let signature = x"af7a449d695edd321d31d802b25cde1166c647fe8d643da9e79f2548f440d98474842f978dbfbb6310ae90c97fe20bf2c3fc3af678ffcd96cbed5f6543351b1200";

        assert!(is_valid(&data, &signature, &PUBKEY), 0);
    }

    #[test]
    fun test_is_valid_gllustration() {
        let data = x"13612077696c6420666c6f776572206669656c640c476c6c757374726174696f6e";
        let signature = x"d4f3c184827a1a660f038c21fda65249d8c82ec0f5701971dd3e654bc9fe4ca30a14d3383fcd8f7aeb3cb464e96f1f4a65320eade6d794f8e761ae731dc289b301";

        assert!(is_valid(&data, &signature, &PUBKEY), 0);
    }

    #[test]
    fun test_is_valid_hllustration() {
        let data = x"13612077696c6420666c6f776572206669656c640c486c6c757374726174696f6e";
        let signature = x"f951953d478236fe5196a661964c8f8889098c2d24304b5de255b06fdc8d1a9319bea0aa822963b9abe4d43345154f069b8870ce7e6448ecd3bb3f4fe9367d0401";

        assert!(is_valid(&data, &signature, &PUBKEY), 0);
    }

    #[test]
    fun test_is_valid_illustration() {
        let data = x"13612077696c6420666c6f776572206669656c640c496c6c757374726174696f6e";
        let signature = x"5c9feb0d182e4cc07ea1a6caeacbb0d0f4dbff14ce98db659be9819c5667367a10a698b5231fa56594ad6bdb8d3f523354bbf0a0d52fefcd4c2eebf3da7eed9a00";

        assert!(is_valid(&data, &signature, &PUBKEY), 0);
    }
}