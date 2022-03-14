import 'package:flutter/material.dart';
import 'package:pretest_kuis1/ui/screens/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              'Track parcel',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          snap: true,
          floating: true,
          centerTitle: false,
          titleSpacing: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMUExYTFBMWFxYYGhgaGhcXGhwbGRkbHhkaGRoaHxoZHioiGRwnHBkaIzMjKCstMDAwGSE2RzYvOiovMC0BCwsLDw4PGxERHDQoIicvMC8tLTE6LzAwMS8tLy8tLy8vLy8xLy8vMjgvLzEtOi8vMy8vLy8xLy8vLTgvLzgvOP/AABEIALcBEwMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABgcDBAUCAQj/xABPEAACAQMCAwQGBQcICQEJAAABAgMABBESIQUxQQYTIlEHFDJhcYEjQlKRoRUzcoKxwdIkQ1NUYpKUoxY0Y5Ois8LR8HMlJjVEZHR1ssT/xAAaAQEAAgMBAAAAAAAAAAAAAAAAAQMCBAUG/8QAMhEAAgEDAwIDBwIHAQAAAAAAAAECAwQREiExBUFRYZETIjJxobHwgcEUJEKy0eHxI//aAAwDAQACEQMRAD8AvGlKUApSlAKUpQClKUApSlAKUpQClKUApXH492ltLRdVxOkfkpOXb9FBlm+QqNf6V8Quv9QsCiHlcXhMafFYl8bg8waAntY1kB5EH4b1VvHLOFc/lfjLueZtoGESEfZMUeZJB79q4tnL2ddsQTXNhIMASo8sWQOWWbUmP0sGgLwpVe2S8WiUSWt5bcSh6CTCSEeSzREox97Vt2npFgVxFewy2Mp2xOPomOPqzL4GHvOKAm9KwwzK6hlYMpGQykEEeYI2IrNQClKUApSlAKUpQClKUApSlAKUpQClKUApSlAKUpQClKUApSlAKUpQCleXYAZJwPOoHfdrp7uRrfhSLIVOmS8k/wBXiPUL/Sv7hkcuYoCR9ou01tZIHuJQmdlUbu55YVBu2/yHXFRiW/4negsgHDbTGTLNg3LLschD4YRjIyxyOdRriHFuH8LkZyzcR4kfblkOe7O+2rdYQN/AuW3wcDFQDtH2lu75s3ExKZyIU8MS+Xh+sfe2T76sp0pTexKROJe0vCeHsWtYmvrr61xK2vJ8++cH/LXB86i3Hu3vEbrIecxRn+bgzGPmwOtvm2PdUaROgG/kOf3da2uH8PlnmWGKMtKxICbKSQCxHjIAICnmelbsLaEd5bk7GksQHT/v99eyK69l2bnl7vCqO8na3UMcESqNTKwxlcCnEOz0kTKgmt5pGfuxFbyiWQNvsVAGncY+NXxcFsidjl2E8kD95BK8T/ajYqT8cHce41OOF+lKfR3V9BHeQnZtSqsmOuRjQ/wwPjUd4z2YubePvZUXQDpZkkSQI/2H0MdDfHb31z73h00W0sMseeWtGXPwLDf5VVKjSmsr6EbFqdnIreUmTgl81tLuzWU+WibqfomJK7nd4ywHIYqTcP7d93ILfiUJtJjsrk5t5T5pLyXzw3LIGc1+eiu4IJBByGBwQehBG4NTrgfpHfR6txKIXds2xZgDKo8znaTHmcN1ya06lvKHG6IwfoMGvtVZwkzWkYuOFym+4f8AWtixMsI6iJm8Ww/mm328zmp32c7RQXsfe276gDhlIw6N1V1O6n/zeqCDsUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFaXE+IxW8bSyuqIoyzNyH/c+7ma8cZ4rFbRPPM4SNBlmP4ADqSdgBuSQKruU+tD8qcV+hsovFb2jb6vsyyr9eRvqpvz8s6gMl3LLxNGnuXaz4Uo1aSdEtyo+s55xxHoo3OeuQRC+1XpDaRPVOHL6taqNOpRokkHuxvGp/vHO5G4rkdte2E3EZctmO3Q/RQg7Dyd8bM/4LyHUnRt+BStAbjACagsYbOud84KRKoJcgZJOMDHPnjbpUNtU/QywaNhYs7CONcksq9AMs2lcsdlyxxkkbmpND2UaIO93G4NvLEZodxqt2OlpkkU+LDHfTyHWpBdcMsTYIsV16vHdzd9E0gZlRo4lQwSyg5QiQuwc+Xu31uK+kCaNggaO41RNFcI30kDOBo7yJwQdLqFLKMLkHqSRdrlLaCIOvwvh9pZiaSb6N7OaRI5kTWSlyF9XncD29Csw64wQPKodwqE2HE4GmkRkR1fvkbWrxuCO8yMnkxODv8eZ4l1xeeRQrzOVEccWnOAUjz3asBjXpJJBbJ3rR2FZwpNZy+ScFlL20tXW3eTKzRXiTSsqEiZFjaLvthsxTRldjkHate47VQpdW9x601ysUzMYhapAUR0dSwcYMhXI2PPnWnbdiItEZlnmWRkR2RYlYIWUNpyZBkgEZ2517j7G2rZxdTnBIOIY9iOY/O860ZXdpBtOfGxareq0movc9xjhvcpbCeORpLiItNomh+h73W7TmQiNmCkqNtvxqQdoFnurhIdE6Q3E4Ustyk1tJCmZGIQZMLaIwcAgc+ed697UcEW2kjVHaRJIw6syhT7boykAkZBTz6iuTbzNGdUbMjbjKEqcEYIyuDuCR8624U1OKnB5XK/XuVOLTwyxO1PBraZFaKO3WW4mQWfqxkAliZyHMsbKFQqObDr+MG4lYCOeSGJzLod0DKp8enOohRk4GG+QzyrocG7UywJGgSNu5SdYGIw0LTe04P1sb4U+Z3qU+iGOGN2lDxtPolOHOFghjA1O7EbF3ZFz0UOfMVOXSi87kcEH4Bxy4s5e+tpNDHGpTujjydfrD37EdCKs3hV3FxFjd2Di04ogHeQk/RzqOYccpEPLWBqG2fqmon2z4Nbwi3gh72a7kzJK+DmQPkr9EPZLHLKo3CgZ3O0Ylint5vrwTxMCD7Lo2Mj7wfgQfI1VOkqi1R5+5PJ+i+yXatbrVDKhguotpbdvaX+0p+vGejDzHuJlFU3wXi8fGFQFxbcWgGqGddhIBz2+sh31RnOMkjIyKnPY7tQ1wXt7hO5vYNpYujDpLGfrRtt8M48idNrGxiSulKVAFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBWC4mVFZ3YKqgszE4AAGSSegArPVd9opG4ndnh0bEWsBVryRfrtzS3B+WWx5dCMEDTWZeIOeI3f0fDbYlreNxjvmG3rDqea9EXmc/HVWfbbtbLxGbW2UhQnuYvIfbbzkI+7kOpPV9J3a0XUotYMLaW5CgLssjrtkAfUXko5Hc+WIrwrhstxIIYU1uwJC5AzgEkZYgZwOVblvRytcuDLB1+xfB4JpddzNGkKkKFd9BlkYHRHkZKIcHU+NuQ35d/hvGGgWSxvWNrNChWC5Ca5YoiQXhRuZDKpCOD7s1zOBz98rWF5buyQrIwkVQs9oo8TsQ2NceSCUbc5GMnAqPcR4nLIqRvM0kcIZIiwwQhP3gbDYk45Vc4ucmn+fIcmfjHFVYNFArQ2wYMImbUWZV0965/pGXnjYficXEuCXECo80LorgFSRtuM6Tj2WxvpODjpUu7Mdmxb6bidQZ9jHEw2h6iSQH+c6qh9nZjvgDvrMfEGAdX9tHGpX6+IHnvvnn1rnXHWKdCoqcVlLlm7Rspzhq48PMqOvMmMHJx0zVgv2Nte87zvJREdxAo8anqpmbI0eRwWwehGT17KGGD8xBFER9bTrk/3kmW+7FZ1utW8I+68t+BELKrJ8Y+Zl7RXaRyyFyQA7qMAnAUt0HRVUknoBXMhg9XKI4YGeOKYnBIEkuQ6k4wviCjfG7gda3ZJTrdycn1e7fJ6kRjJz5+L8a6vahMLg/1UE/qTwn99eSnUWpJr428m3UrShOKX9OPqiF+kIAw2rZ3Dzp8RiF/2sfvqE1bouDpMZ0shzlHVXQ+fhcEVyL/ALNWk2SENu5+tFlo8/2omOw/QYfA16Hp3VqMKUaU8rG2exVcWdRyc475K8ijZmCKpZmOAqgkk+QA3J+FbXEOHT20gWaNonwGAbG489sg7jBHmMGrD4Rw2K1TTEdUhGJJ8YZs80TO6R/i3XyrNdW0U0XcTAmPmrDGuJvtp+9TsceeDV8+uUlV9mlmPd/nYrVhUdPX38Dm9iu1gknEUsaRvNnvrwPpnZl8eS7DCoVXRoXHPbHKuN2isGkE1/dSGFp2L28GnMsi5AVmXP0cSoANR3J6cg3F47waS2k7t9wRqjkXOmRc+0p6EHmOan5VIoWg4m8RuLkW9z4InkZGcXA5RkAYWNx7LEkA+E43wOliKxOHD7rc0WsMhsbsrK6MUdCGV1OGVhuCDVscJ4l+Vo0kjdYOLWg1I3JZV5EEdYmzgj6pbyO8R7a9nre0SFUknM76meOYICsYJVWIT2NRBIBJOPLGKjVhfS28yXELaJYzlT+1SOqkZBHkaxq01Ujrjz9xyfpPsb2lW9iYshinibu54T7Ucg5j3qcEg/vBqR1U54kbiOPjdgv08Q0XluD+djABZT5uowyNjJGPLFWRwXisVzDHcQtqjkUMp/aD5EHII6EGtAxOhSlKAUpSgFKUoBSlKAUpSgFKUoBSlKA4Hbnib21hczx+2kbFSd8Mdgce4nNV72wl/JXCYra3J725J7yYnxksoeZyeeptlB6A88gVNPSx/wDCbv8A9P8A6lqC+nI/QcP/AF/+XHWUFmSRKKpRQAAOVSjh1lawWsN1cxyy99JIqCKTuhEIiPFqA3lJOVUkDCk9KjltA0jpGoyzsqKPNmIVR95FWJxsNwyAm2edR6x3Ekd1GhimYRl+/jRl2GQFBGxGOeK6VXbEUSzm9tuNzIq2wl72KaKGZZ3QLctC2WSGZx7WG35ZOBzyai3BOIer3EU+gOI3VipxuBzxnk2NwehAPSvHEuISzytNM5eRubHHwAAGwAGwArVqyFNKOkFuTAbMr60cB0f7atuG+Pn5EEdKxVz+yts8VmiyEkyt3qIeUSHYEdQZPaI5YCnGSTW7d3aQxGZ1LDUEjjHtSyn2YxjfHViN8ctyK8NXtf5p0aTzv+eh6GlXxQU57fn7nu5kjij72aQRxk4U4y0h+zGg3c+/YDqRXqCK8kAaOAWsbHCvNGZ7ljjIPdbRw7b+PGPMitWSwnicXE6M10wH0mj6K2XpFCBlQwGxYZ07gb6mPQGuAd2jsJmw00gJ1Z5iPVnO3NvNjjpXetum0qKTwnLxe/ojk17ypUezwvBHPv4QpnPrk1ywsL3UZGUxocQhRGF8Iz4s4JGw3qRdtgMTcxizuj4diArwsSD5itC/jdkk7xyzNaSg5xsskkajfmSdJO/Qit/tvGWZlHNrDiAA9/0GP21wuoTTv4R8M/ZMqivdZzfVLhtJt7s3SHYJdw94Q3PS00I72JsZwSAvvrVFwpkEEsbW1wfZilYNHL0+hnHhff6p3ztkmujd3c6SYaVpEx7DE6HRgDjSNhlSN+nyrm3nDTvCImntpRqEeCTg7ZBUExyqcrqHUHIIOK9DVs6VePvJZ7NbMUrmpTez/TsZWUgkEEEbEHYg/CvNI0kjkS1nZnLD+TTP7cgAGbebHKZQRg9dh1Ws1pKEdWK6gCCVPX768zc2kreooyez4fkd2hcqrDVFbrlEc7e8QCRJabNIzLM+d+6GMIo+y7g6j106B1qF2k/dyJIFVijK2lt1bSQdLDyOMH3Gt/tRYyQ3MiyOZCx7xZW5yK/iVz7zyPkQR0rlV7e0oxp0Iwi8rHPiefqyc5tvlstjgdrBcie+FrLeTE+F7jCxvMQPAkWdKwxjGXcnGABk1WHELNoZGiZo2KnBMTh0zgEgMOeCcHyIIqT9kmaW3mSQzTQQmIJaJKYkkeeUrmRhgiMNuc9W6Vg7W8JiSKKeO3NszSzQvB3hkXVC2kujNvpzlT0yBj3qfuTcclaMfo549JaX0WjdJ3jhlToQ7BVb9JWOfgWHWrW7Lxi04tc2MZIhlhW7WM+zG5k0SBPJSSDj3VRvCGxc2x8riA/5q1eyj/3kP/43/wDpFalzFRm8Bk9pSlUEClKUApSlAKUpQClKUApSlAKUpQEV9KEWrhd4P9ix/u4b91QP01EPZ8OlHInb9aJWH/61ZfbO2MthdRjm1vMB8TG2PxxVX9vj33AeHTdVNvk/GF4z/wAWPurKDxJAq8HHKuxB2rvUjaIXMrRspVkkIkGCMEDvASvyIrjUrsuKfKMz4SBXU7PcIa4nii0t3bsNbgHAQeJzqAwPCD88VJ/R5hYZpAq6xLGocqpYApIWAJBK5IXl5VJZb+VhhpJCD0Ltj4YziuLf9XjbzdJRba7/ADNyhZyqrVnCPlxIZHJA3Y4VR0HJVHwGB8q0IInuLiaaEa1tP5PbgEZMx/PzAH2iu5GM+1Efq1vW8/dlpf6KOWX5xxtIPxUVxuEcKm9TtcROylZJWYAtlnlYAkgc+7SPnWh0anlSrS5bxn6st6jPGmmuEv8Ah3OzlvNDIWYSoEVnIOpdRHsgjbILlfvrq2N1O7KpfUWIHiVW5n+0DWtwe6ljhkOtwdUSgajtnWx2PL2AK7vCLpyw1MDgMd1UnZSRvjPMV2JPlnLOHxqYtNcnbHcwquABs9wUHIb7KK6XaKPMqeZgvFHzER/6a53FGzPcA4/N8NGwAG93N0A+Fdjio/lFv7xcD70U/urxHU5Yvs/P+1GzD4TSS7kNvbyK2MxgHCqOQBHT7LAfKtC6nklhkVpHJQhx4jupIRx8MlD99dbgM5NhbkBfzUB9hesW/Mc9hvWOK9lMmjvCAyyDw4Xfu20nw45Ng17Sm/d2NYiMHAppkeExsqPho5CNAjnXeJ1Y43J8BxuQ/uFbFtdmeGKcjS0gIkXGMTIdMu3TJw+Omute7hnmbUqyyMNwQGcg8+e+Kz26aZ+IRYwFnhnA8jcRFpB/eC/dWt1Sl7S3k3zHc3LGo4VV57HJ7bWJltklVSXgfQcDJMUmSOXPTIv+aagBO+Ovl1+6rchmdDlHZTyypIP4VsQsZmEU2JEbIxKok+q2CC4JBz1BrT6d1hU4Qozi32z83sbd1ZNylOL88fcqnhPFp7Z+9gkaNypUkYOQeYIYEHkOm2KwXl3JKxeR2diSSWOdzuT7smtaI5APuFeq9ThZycs3OBrm6tR53NuP81avS3jLdopX6JYIvzafUP2GqZ7Cwd5xKzX/AGyt/cBk/wCmro7Mtr4xxNt8RpaRjP6DucH93vrmXT/9GYsnVKUrXIFKUoBSlKAUpSgFKUoBSlKAUpSgMcqBgVPIgg/PaqcW1L9m54CcvaySqfMdzcd4R/u/3Vc9V7wG0X1zi/D3ACTaZ1Hms8Xdyn5MAKAoRTmvtfBEyZR/aQlG/SU6T+Ir7XahLVFMzJ32CH8lm/8AuI/+U9dyq/4H2imtgyII3RyGZJFyCQMZBUhlODjY1J+Edr4ppYoZLYRiRgneLMxClvCp0sp21EZ8XLNeb6n0yvVrSqwxj67I6dpdwpw0Sydp4y0c6DctBcKB7zC+B8ztXIsbn6CzkQlf5OEyDg5jllQ7j3jPzFd22lMcisRujDK/A+JfuyK43CbeOEXFpKHb1WRpIgjBdcEujByVOw+jY7H86fI1HRZr2coPlPP0wYdSi9cZdmiV8K4pMYXJlckPH7TFsKVkyPFnbIFdrhV4xJzpPhc+yv2T7qj3Ar+NtcaQINSEjUWclk8YByQOQYbAbkfCty07QLGyalHjJQCOHW5JRjsEUsdgT8Aa6dTEU29kc1Ix8YbVJKRjPfcNXYY2FyG6fpH767PENp7U+byj/Jc/9NROa4vJZZhDbE4lgdmkCLpaNY3VCpkU77HPk1bd3JxRnikNrG3dMzhVZFLExvHjJmONnz8q8XfU1UuG9a/q7rukkbMXiODr9mrkrYRAafDFEu6qdwCvUb+yedebfiMnegasDDE4CjYIzdB7q5nBePlLWJGSRC7YUtFqj5uca8FeuBk9K2PynhJZGjiOAEHgCks+xGUwfYD5+Vewt2pQysPts09zWawRjivEpXGHlkYeTOxH3E1ksk0z3w6IvD4f1lgbV9xQ1mimtpGJkhZEjVpXaNyVCIMkFXBO+yjDc2G1YOD6+4EsgxJcySXTjngSHEY+GkFh7nFYdRnGFtLzWPVmzZwc60Uvn6GxW5wf89H+l+41zeKcQjt4TNJG0hLrGiB9GTpLMS2ltlAXp9YVHZe30o3gghiP2m1yuPeNRCg/q1w7HpletpqRwo57+TOrc3kI6od+PVENg9lfgP2V7r4q4AHlX2vbnDJr6GrTvOKI2PzUUsnwJxEP+Yas/wBGLGT1+5PKa8m0nzSPTGv7DUG9Ejer2vEeINyjTQnvMaNIQPPJdB8qsj0Z8M9X4baxkYPdh2zz1SEyMD8C+PlXHrS1TbMWSmlKVWQKUpQClKUApSlAKUpQClKUApSlAKgnak+rcVsLvYJMHs5D+l9JCP74NTuox6ReENc2EyR571AJYiOYkjOtce840/rUBSXpR4V6vxOcAYWbE6/r+3/mK/3iovVp+k1Vv+F2nFIxkoB3mOiyYRxtz0zKB82qrBXStJ5jjwMkKf8Am1K+qpJAUEkkAAbkknAAHUk7YraJLTseI+swpcfWPgmA6TAeI+4OPGPiw6Vi4pBI3d3EA1XFuCNB3E8BB1xEfWIDNt1VmxuBX3hHChaQmHYyvpMzA5Gpc6Yl/spk5PVi3TArYViCCDgjcEcwfPNeIq3MLa8lOjvHO67PPJ24UXVt1GfPb9jHw7iNuqR3FvG0ikjxPIT3MnPu2VACCOYJbDDce7f4jxDS1rcRwhollZisQUOrdxMhQs7D6zgjJGQQelcm94eSzz2zpBOynvUYfye4HM6lxhHPP7JO/hJzXYbs7bCxifutTOLUsXZ3yWeIEkOxG+punU1vXnUrb2STzJT2wuVnnPgcmVCcJYltgw2HaS5EszrZaRK8bqZZQux7m227tHBIfBO4wD1ru8R4reQldVvAwIkbaaQYCKXPOE9BWz/orYf1K2/3Mf8ADT/Rax/qVt/uo/4a8jVurGU9SpvHhzxst9S+xYoyxyRGy4rNJDBa+qSpKkiHx90yHGonI1Z5Hqu3yrc4jxVHdYFgSUA4+j1IXkIGpl0HGNgBlTsua6V52as1ngVbWFQ3e6tMarnCZGdIFcDj3A1S5eGGU28DwxtMEy0r5klGiMvkRqwXxbgbLkNyr0fTOpWifs4xaTzLL4XYqdKUntuzRngindraIt6rGytdS6g3eON0to3AAYasksB01clGerIzSPsPExACr8gqgdANgKxjSqLFGgjiTZEXkM8ySd2c8yx3P4V6gmKMGXmPmPgR1FVX96riaivgXq/M7FpaujBt/E/zBB+3HFFlnWGMgxwBkDDk0hOZXB8iwCj3Rg1HKknbHgKwFZ4VxBISNP8ARSAZMfnpI8SnyyPq7xuvYWjg6MPZ/DjY41TVrernO4rzK2AT5V6rs9jOCeuX0MGMoW1y+Xdp4mz8Thf1xVlaeiDZgWBPwkx8K4fwzGJb6VDKM4YIT38x2+yNC1b6KAABsAOQqDcHPrfF55+cVknq8fkZn8UxHvUAIantcgwFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBSlKArfgdkkV1fcImH0M6vcW4/2cvhmjHQaX3A+Jqk+J8Okt5pbeT24WKE+Y5qw9zKQw9xr9Aeknhz93FfQD6eyYyqBzePGJo/gyZ+731CPS5wtLiCDi9v4kZFWXH9G35tyOhViUPXxD7NXUZ6J5JTKurc4RxFreeOdFVmjbUA3I9Om42OxG4OD0rTrfsOHI+lpLiBFOcqXYSDmB/Mso3weu1dCtVjThmXHqZFi2l1FNEJoiTHyYNjXE2MlH/aG5Eb+YGlLxiLKKkkTFmxlpVVVGlmyzb4G2PiR51xLKC1iDBbmLxbMfWJVLDmAe7iUEDyxW6t9CAALtQBsALu4AA6DGmvH1bWm6jcYvHZYOgr6ehR7+JuhmIOq7sxktss0ZwMnTuTudOPnmvGmQqqPxGF0QIFQ3ESqAmNO0RXOMDc5OwrW/KEX9cX/ABdx/DT8oxf1xf8AF3H8NR7FrdL6f6NWdWU37zybl2C//wA/Eh80vpB+BnI/CteG1ZTk8SDe5r9sf8MoP41mbIODO4I6G4u/4K86v/qG/wARdfwVGWts/YjS/AzT5bSRewKV9llvGyPm8xNeFD6y78QgkYqqZkmhJCqWIGRjO7Hnk1hmuFTGq505zjVc3IzjY4ym+9YvyjF/XF/xdx/DT2cn5/ov8Exm4vK2ZttfiMjXNbOrMFBjlQsvhJJZR0yOeeorfsp0lOmNlkOQMIQ255cuVcT8oRf1xf8AF3H8NY2ntySxuoySNJPrNxkrv4SdGSu525bnzrF2sX2f6I2qd9UgsPc8dsuPpoNpCVcFlMso3UspJVIz9lSTl+ucDbnDa7d5wm25xXUCnPstKxQDyGINX41x5o9LFdaPj6yElTsDsSAeuNwNwa9VYTpKmoU01js0aM5ucnKXLPBNWf2AjHDuGT8VkXMsw0QLjcjOmMAc/HJv+ioNQXspwB766jtlyFJ1SMPqRrjUfcTkKPewq4zbre8SjgjUCz4YFJAHha404jQe6Nd9uR261F3U1PSuxWyQdg+Bm0s44n3lOZJmO5aV/E5z1wTpz5KKklKVqEClKUApSlAKUpQClKUApSlAKUpQClKUApSlAfCKrng1slndzcKlUGzuxJJbBvZGr89be7mWA8veaseo9217Oi9tzGG0SoRJDKOccq7o2fLofcaA/Pfa3s69hcvbtkr7UTn68ZOx/SHI+8eRFcirpvbQcasGjkURcRtSVZTtolHMf+lLp57jYHfTVLMrKzI6lXUlWQ7FWBwQR7jXQtqupaZcoyQqS9m+wl9dkGOIxxH+dlyiY81GNT7csDHvFRrnttvtucDfbcnYD3nlVzy9r7O3giilvu/7uNEENkCofSqr4ptXu6OgPkeVZV6ko4UO4Z84b6POFwHTcSvdTDGpE1+E9PoYMuB+mTXeHZvh3ThGoeZiiBPykcN+FVTxn0hXUo7q3C2kO+I4PCxzzLSAA5PPw6fnUTnkZzqdmduepyWOfi29UK2qS3kyMH6Du+F8PJJkS4gOMl279EHxY5i++uXwnhtiwk725klIllVI0fxFEcqpC26h2yOo51UPDe0V3Acw3M6e7WWT+4+UPzFdC47dX7KyLN3SsWZu5URlmbmSy+IH4EVTLp6cs4T8yxVJxWE2XI3BbBwv/s+SYDIUyxsSBnO3rLBgM74rn8S7IcIcYktZLc7+MLLEq+8uuYh+tVHTXcjnLyyMfNnZj97GulwftTe2x1Q3Mo/sMxeM+7Q+R8xg++rv4WcV7rMHkl3aD0UTIve2Uq3MRGQpKiTH9lh4JP8Ah+Bqvrq2kicxyxvG45q6lWHybfFWh2f9Ils5zOr2cx5zwDMEh2yZIsEZPmVYgfXFRn0n3SS3KTLc284aJVzAcaShbZk1MUJDjG++D5VZSnUU9MwiIV5kfAr6zVYHop7MJIx4lc4W2gyyFvZZ03Mh/sJj5sP7NW16qhHz7Bnf4HZNwfh2vRq4jeMqRx8yHb82n6KAlm6ZOM8qn/Yzs+tlbJDnU+7yydZJW3dyTud9hnoBUe7G2731y3FplIjAMdlG3NItw0xB5PJ+zzGKn9cxvO7MT7SlKgClKUApSlAKUpQClKUApSlAKUpQClKUApSlAKUpQEI7V8CnjuE4jYIGnUaJ4NQRbmLyydlkU4w37cYPC4txfg90+jiVo9pOdtU8ZiY48p49mX4nFWpWC5tUkUpIiup5q4DKfiDtQFP3noggmXvbC+BQ8g+mVD5YkjIwPiDUX4l6MuKRb9wsw84JAf8AhfS33CrdvPRrYMxeFJLWQ/XtZGiP3L4fwrCOzXFYf9X4r3i9EuoVc/OVCGP3dKsjVnHhk5KCv7GeHPfQTxY6yRuo+8jFaa3KHkw++v0OOJ8ciHjsbS4I59xO0WfgJlrTu+PuR/Kez87foJDcfs5irldz7jJRGseYprHmKuSTiXCcZfgFyh6g2Cj9m1Yo+KcFJ24JcE+6yB/fWX8ZLwJyU80qjqPvpFKHOlMu3RUBYn5DeruteLWYP0HZ25yeTGzijB/WY7V1IuPcUPhg4MI16NNcRoPmiAn8ah3k+yGSmuH9juIz47uymx9qQd0vxzIRkfCpXwv0N3b4NxPFCvMqgMjY67nSqn35NT31Pjs2ddzZ2oPLuYnmcD3mUhc/DyofRuk297eXV3nGUeQxxfERxYx99VSrzlyyMkYTg/Z6wYLK4u5+QjJ79y32e5jGgH9IV15ra64oY4WtZLPh6kNIshVZZwuCsfdr+bTO5qa8H4Ba2oxb28cXmUUAn4tzPzNdWqSDFDGFUKoAAAAAGAANgAOgxWWlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoD//2Q==',
                  ),
                ),
              ),
            ),
          ],
          shadowColor: Colors.transparent,
          expandedHeight: 426,
          pinned: true,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 64),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter parcel number or scan QR code',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 40,
                            top: 7,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  height: 49,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              GestureDetector(
                                onTap: () {
                                  print('Scan object pressed!');
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(14),
                                  width: 50,
                                  height: 49,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: SvgPicture.asset(
                                      'assets/images/icon_qrcode.svg'),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 48,
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {
                              print('button pressed');
                            },
                            child: Text(
                              'Track parcel',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            style: Theme.of(context).textButtonTheme.style,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.only(top: 32),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'My parcels',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
            )
          ]),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  height: 174,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Theme.of(context).backgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor,
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '00359007738060313786',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Container(
                            height: 31,
                            width: 78,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Amazon_logo.svg/1000px-Amazon_logo.svg.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('In transit',
                              style: Theme.of(context).textTheme.headline4),
                          Text(
                            'Last update: 3 hours ago',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          SizedBox(
                            height: 5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(2.5),
                              child: LinearProgressIndicator(
                                value: 0.7,
                                color: Theme.of(context)
                                    .appBarTheme
                                    .backgroundColor,
                                backgroundColor: const Color(0xFFF8F8F8),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Details',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                SvgPicture.asset(
                                  'assets/images/icon_details.svg',
                                ),
                              ],
                            ),
                            Container(
                              height: 1,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
