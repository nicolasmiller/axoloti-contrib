<patch-1.0 appVersion="1.0.8">
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="on" x="84" y="14">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="phi/ctrl/i radio 3 v" uuid="81c4cf13a2d0e267b327a4663a711c2496f5f9b6" name="filter mode" x="518" y="42">
      <params>
         <int32.vradio name="value" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="noise gate" x="84" y="84">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="bits" x="168" y="84">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/&gt;&gt;" uuid="d883beaf50b7aae4803ed9941e8f123e87e1e3aa" name="&gt;&gt;_1" x="252" y="84">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="19"/>
      </attribs>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="a" x="14" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="gao/dist/biscuitage_m" uuid="f2bbf71412d51b5f616852a84905519c111ea9fe" name="biscuitage_m_1" x="140" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/multimode svf m" uuid="71d5f8b2131b691d591a9a9ee28771309f8938d" name="multimode" x="308" y="182">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
         <frac32.u.map name="reso" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 3" uuid="8e20982407718ae2b4e3cd55c79b04e53bb23457" name="demux_1" x="462" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_1" x="560" y="182">
      <params>
         <frac32.u.map name="amp" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain" x="686" y="182">
      <params>
         <frac32.u.map name="amp" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="539c246f4c360ac476e128cfbfa84348fb7f7e73" name="mux_1" x="798" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out" x="896" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="display bits" x="882" y="252">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="a" outlet="inlet"/>
         <dest obj="biscuitage_m_1" inlet="a"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="biscuitage_m_1" outlet="b"/>
         <dest obj="multimode" inlet="in"/>
      </net>
      <net>
         <source obj="on" outlet="o"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="noise gate" outlet="out"/>
         <dest obj="biscuitage_m_1" inlet="noisegate"/>
      </net>
      <net>
         <source obj="bits" outlet="out"/>
         <dest obj="&gt;&gt;_1" inlet="a"/>
      </net>
      <net>
         <source obj="&gt;&gt;_1" outlet="result"/>
         <dest obj="biscuitage_m_1" inlet="mutebits"/>
         <dest obj="display bits" inlet="outlet"/>
      </net>
      <net>
         <source obj="multimode" outlet="hp"/>
         <dest obj="demux_1" inlet="i0"/>
      </net>
      <net>
         <source obj="multimode" outlet="bp"/>
         <dest obj="demux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="multimode" outlet="lp"/>
         <dest obj="demux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="out" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_1" outlet="o"/>
         <dest obj="*c_1" inlet="in"/>
      </net>
      <net>
         <source obj="filter mode" outlet="out"/>
         <dest obj="demux_1" inlet="s"/>
      </net>
      <net>
         <source obj="gain" outlet="out"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="gain" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Author></Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>168</x>
      <y>122</y>
      <width>1058</width>
      <height>577</height>
   </windowPos>
</patch-1.0>