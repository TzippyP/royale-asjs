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
package org.apache.royale.jewel.beads.views
{
	import org.apache.royale.core.IStrand;
	import org.apache.royale.jewel.ButtonBar;
	import org.apache.royale.jewel.beads.models.ListPresentationModel;

	/**
	 *  The ButtonBarView class creates the visual elements of the org.apache.royale.jewel.ButtonBar 
	 *  component. A ButtonBar is a type of List and ButtonBarView extends the ListView bead.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10.2
	 *  @playerversion AIR 2.6
	 *  @productversion Royale 0.9.7
	 */
	public class ButtonBarView extends ListView
	{
		/**
		 *  constructor.
		 *
		 *  @langversion 3.0
		 *  @playerversion Flash 10.2
		 *  @playerversion AIR 2.6
		 *  @productversion Royale 0.9.7
		 */
		public function ButtonBarView()
		{
			super();
		}
		
		private var _buttonBar:ButtonBar;
		/**
		 *  the ButtonBar associated to this view
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10.2
		 *  @playerversion AIR 2.6
		 *  @productversion Royale 0.9.7
		 */
		public function get buttonBar():ButtonBar
		{
			return _buttonBar;
		}

		public function set buttonBar(value:ButtonBar):void
		{
			_buttonBar = value;
		}

		/**
		 *  @copy org.apache.royale.core.IBead#strand
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10.2
		 *  @playerversion AIR 2.6
		 *  @productversion Royale 0.9.7
		 */
		override public function set strand(value:IStrand):void
		{
			super.strand = value;
			buttonBar = value as ButtonBar;
			(buttonBar.presentationModel as ListPresentationModel).rowHeight = 38;
		}
	}
}
