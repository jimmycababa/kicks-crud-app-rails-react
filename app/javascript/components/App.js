import React from 'react'
import { Router, BrowserRouter as Router } from 'react-router-dom'
import Home from './Home'
import About from './About'

export default function App() {
    return (
        <Router>

        <div>
        <span>Adding Routing!</span>
        </div>
        <Route path="/" exact component={Home} />
        <Route path="/about" component={About} />
        </Router>
    )
}

