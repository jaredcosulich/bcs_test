import secp256k1 from 'secp256k1';
import { BCS, fromHEX, toHEX, getSuiMoveConfig } from '@mysten/bcs';
import { utils } from 'ethers';

const privKeyHex = "31df8fb8ca3d30eb64e2a0804e49127017ca2eeb6a00b46f2591755a82e6d111"
// const publicKeyHex = "0468f2aecfd38a14c96b60fcee60b497e4021661680536887b21a04a4f25f3986bd2bd172455ad14085e0c57689e6d2da7dff4914fb90a9d6cc5c8ea780d669d41"

const privKey = Buffer.from(privKeyHex, 'hex');    

const bcs = new BCS(getSuiMoveConfig())

// bcs.registerAddressType('SuiAddress', 20, 'hex');

bcs.registerStructType('TestBCS', {
    prompt: 'string',
    style: 'string',
    // address: 'SuiAddress' 
});

const styles = ["Allustration", "Bllustration", "Cllustration", "Dllustration", "Ellustration", "Fllustration", "Gllustration", "Hllustration", "Illustration"]

for (const style of styles) {
    const prompt = "a wild flower field"
    // const address = '0x'.padEnd(62, '0');    
    
    const serializedData = bcs.ser('TestBCS', {
        prompt,
        style,
        // address    
    });
    
    const hashed = fromHEX(utils.keccak256(serializedData.toBytes()));
    const signInfo = secp256k1.ecdsaSign(hashed, privKey);
    const signedData = signInfo.signature;
    
    const data = toHEX(serializedData.toBytes());
    const signature = toHEX(signedData) + `0${signInfo.recid}`;
    
    console.log(style)
    console.log("DATA", data);
    console.log("SIGNATURE", signature)
    console.log("")
}
