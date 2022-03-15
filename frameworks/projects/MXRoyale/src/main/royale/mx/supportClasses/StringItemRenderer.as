
////////////////////////////////////////////////////////////////////////////////
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////
package mx.supportClasses
{
    import org.apache.royale.html.supportClasses.StringItemRenderer;
	import org.apache.royale.html.util.getLabelFromXMLData;
    
    /**
     *  The ComboBoxList class is the item renderer used internally in ComboBoxList
     *  
     *  @langversion 3.0
     *  @playerversion Flash 10.2
     *  @playerversion AIR 2.6
     *  @productversion Royale 0.9.10
     */
	public class StringItemRenderer extends org.apache.royale.html.supportClasses.StringItemRenderer
	{
		/**
		 *  Constructor.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10.2
		 *  @playerversion AIR 2.6
		 *  @productversion Royale 0.9.10
		 */
		public function StringItemRenderer()
		{
			super();
		}

		
		override protected function dataToString(value:Object):String
		{
			if (value is XML)
			{
				return getLabelFromXMLData(this,value);
			}
			return super.dataToString(value);
		}
	}
}
