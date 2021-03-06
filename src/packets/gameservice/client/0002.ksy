#pragma.examples gameservice/client 0002
#pragma.parseAs GameserviceClientPacket
---
meta:
  id: gameservice_client_0002_hello
  title: GameService Client Hello / Login
  encoding: ASCII
  endian: le
  imports:
    - ../../common/pstring

doc: |
  This packet begins communication between the gameserver and the client, after
  interaction with the loginserver has completed and the client has been handed off.
  
  The responses are:
  * [GameService Server 0x0044 Unknown](/packets/gameservice/server/0044.ksy),
  * GameService Server 0x011F Undocumented,
  * [GameService Server 0x0044 Unknown](/packets/gameservice/server/0044.ksy),
  * GameService Server 0x0070 Undocumented,
  * GameService Server 0x0071 Undocumented,
  * [GameService Server 0x0073 User Inventory](/packets/gameservice/server/0073.ksy),
  * GameService Server 0x00E1 Undocumented,
  * [GameService Server 0x0072 User Equipment](/packets/gameservice/server/0072.ksy),
  * [GameService Server 0x004D Sub-Server List](/packets/gameservice/server/004d.ksy),
  * GameService Server 0x0131 Undocumented,
  * [GameService Server 0x021D Achievements Progress Report](/packets/gameservice/server/021d.ksy),
  * [GameService Server 0x021E Achievements Association Report](/packets/gameservice/server/021e.ksy),
  * GameService Server 0x00F1 Undocumented,
  * GameService Server 0x0135 Undocumented,
  * GameService Server 0x0136 Undocumented,
  * GameService Server 0x0181 Undocumented,
  * [GameService Server 0x0096 Cookie Balance](/packets/gameservice/server/0096.ksy),
  * GameService Server 0x0169 Undocumented,
  * GameService Server 0x00B4 Undocumented,
  * GameService Server 0x0158 Undocumented,
  * GameService Server 0x025D Undocumented, and
  * GameService Server 0x0210 Undocumented.

seq:
  - id: user_name
    type: pstring
    doc: |
      Local user's name
  - id: user_id
    type: u4
    doc: |
      Local user's ID
  - id: padding_a
    size: 4
    doc: Likely padding.
  - id: unknown_b
    size: 2
  - id: login_key
    type: pstring
    doc: |
      Provided by [Loginservice Server 0x0010 Login Key](/packets/loginservice/server/0010.ksy).
  - id: client_version
    type: pstring
    doc: |
      e.g. "829.01"
  - id: unknown_c
    size: 4
  - id: padding_d
    size: 4
    doc: Likely padding.
  - id: session_key
    type: pstring
    doc: |
      Provided by [Loginservice Server 0x0003 Session Key](/packets/loginservice/server/0003.ksy) or [Gameservice Server 0x01D4 New Session Key](/packets/loginservice/server/01d4.ksy).
