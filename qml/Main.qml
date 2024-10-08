/*
 * Copyright (C) 2024  sertf
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * sbsetalarm is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.7
import Lomiri.Components 1.3
//import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0

MainView {
    id: root
    objectName: 'mainView'
    applicationName: 'sbsetalarm.sertf'
    automaticOrientation: true

    width: units.gu(45)
    height: units.gu(75)

    Page {
        Alarm{
            id: alarm

        }
        anchors.fill: parent

        header: PageHeader {
            id: header
            title: i18n.tr('SBSetAlarm')
        }

        Label {
            anchors {
                top: header.bottom
                left: parent.left
                right: parent.right
                bottom: parent.bottom
            }
            text: i18n.tr('Hello World!')

            verticalAlignment: Label.AlignVCenter
            horizontalAlignment: Label.AlignHCenter
        }
        Button{
            text: 'Click Here'
            anchors{
                centerIn: parent

            }
            onClicked : {
                console.log("start");
                alarm.date = new Date();
                //date.setMinutes(date.getMinutes() + minutes);
                var date = new Date();
                date.setMinutes(date.getMinutes() +2);
                console.log(date);
                alarm.date = date;
                console.log(alarm.date);
                alarm.message = 'the break is over';
                alarm.save();
            }

        }
    }
}
