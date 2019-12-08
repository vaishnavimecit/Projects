using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

/// <summary>
/// Summary description for SecretKeyGenerator
/// </summary>
public class SecretKeyGenerator
{

    public const Int16 MaxCharactersInSecretNumber = 7;
    private const UInt64 LargePrimeLessThanMaxValueRepresentableWith7Base32Digits = 32416190071;
    private const UInt64 LargePrimeWhoseProductWithAIsLessThanUInt64MaxValue = 569059577;
    private const UInt64 A = LargePrimeLessThanMaxValueRepresentableWith7Base32Digits;
    private const UInt64 B = LargePrimeWhoseProductWithAIsLessThanUInt64MaxValue; //87178291199;


    private static char[] Base32Digits = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z' };
    private const UInt64 BitMask = 0x000000000000001F;
    public const Int16 NumberOfBitsToRepresentBase32Digit = 5;


    public virtual String GenerateSecretKey(UInt64 n)
    {
        UInt64 NthPseudoRandomNumber = GenerateNthUniquePseudoRandomNumber(n);
        String SecretKey = EncodeBase32(NthPseudoRandomNumber);
        return SecretKey;
    }

    public UInt64 GenerateNthUniquePseudoRandomNumber(UInt64 n)
    {   
        return ((n) * B) % A;
    }


    private String EncodeBase32(UInt64 NumberToEncode)
    {
        byte[] bytes = BitConverter.GetBytes(NumberToEncode);

        StringBuilder TrackingNumberBuilder = new StringBuilder(MaxCharactersInSecretNumber);

        for (int i = 0; i < MaxCharactersInSecretNumber; i++)
        {
            Byte Base32Digit = (Byte)(NumberToEncode & BitMask);
            TrackingNumberBuilder.Insert(i, Base32Digits, Base32Digit, 1);
            NumberToEncode = NumberToEncode >> NumberOfBitsToRepresentBase32Digit;
        }

        return TrackingNumberBuilder.ToString();
    }

}