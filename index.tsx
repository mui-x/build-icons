import React from 'react'
import ReactDOM from 'react-dom' 

import { Play } from 'muix-icons/Play'

const AppComp: React.SFC = props => <h3>{Play}</h3>

export const init = () => ReactDOM.render(<AppComp />, document.getElementById('content'))



